.class public Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/pubinfo/freewifialliance/view/PageIndicator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1


# instance fields
.field private mActivePointerId:I

.field private mCentered:Z

.field private mCurrentPage:I

.field private mIsDragging:Z

.field private mLastMotionX:F

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mTouchSlop:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/high16 v0, 0x7f010000

    invoke-direct {p0, p1, p2, v0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 77
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 50
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 51
    new-instance v17, Landroid/graphics/Paint;

    const/16 v18, 0x1

    invoke-direct/range {v17 .. v18}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 63
    const/high16 v17, -0x40800000    # -1.0f

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mLastMotionX:F

    .line 64
    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mActivePointerId:I

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->isInEditMode()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 115
    :goto_0
    return-void

    .line 81
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 82
    .local v16, "res":Landroid/content/res/Resources;
    const v17, 0x7f0800d4

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    .line 83
    .local v11, "defaultPageColor":I
    const v17, 0x7f0800d3

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 84
    .local v9, "defaultFillColor":I
    const/high16 v17, 0x7f0b0000

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    .line 85
    .local v10, "defaultOrientation":I
    const v17, 0x7f0800d5

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    .line 86
    .local v14, "defaultStrokeColor":I
    const v17, 0x7f090006

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 87
    .local v15, "defaultStrokeWidth":F
    const v17, 0x7f090005

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 88
    .local v12, "defaultRadius":F
    const/high16 v17, 0x7f0a0000

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 89
    .local v8, "defaultCentered":Z
    const v17, 0x7f0a0001

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 92
    .local v13, "defaultSnap":Z
    sget-object v17, Lcom/pubinfo/freewifialliance/R$styleable;->CirclePageIndicator:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 94
    .local v5, "a":Landroid/content/res/TypedArray;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v5, v0, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCentered:Z

    .line 95
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mOrientation:I

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v18

    invoke-virtual {v5, v0, v11}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-virtual {v5, v0, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    sget-object v18, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    move/from16 v0, v18

    invoke-virtual {v5, v0, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    const/16 v17, 0x6

    move/from16 v0, v17

    invoke-virtual {v5, v0, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    .line 104
    const/16 v17, 0x7

    move/from16 v0, v17

    invoke-virtual {v5, v0, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mSnap:Z

    .line 106
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 107
    .local v6, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 108
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :cond_1
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v7

    .line 114
    .local v7, "configuration":Landroid/view/ViewConfiguration;
    invoke-static {v7}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mTouchSlop:I

    goto/16 :goto_0
.end method

.method private measureLong(I)I
    .locals 7
    .param p1, "measureSpec"    # I

    .prologue
    .line 463
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 464
    .local v2, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 466
    .local v3, "specSize":I
    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_0

    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v4, :cond_2

    .line 468
    :cond_0
    move v1, v3

    .line 479
    .local v1, "result":I
    :cond_1
    :goto_0
    return v1

    .line 471
    .end local v1    # "result":I
    :cond_2
    iget-object v4, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 472
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 473
    mul-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    .line 472
    add-float/2addr v4, v5

    .line 473
    add-int/lit8 v5, v0, -0x1

    int-to-float v5, v5

    iget v6, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    mul-float/2addr v5, v6

    .line 472
    add-float/2addr v4, v5

    .line 473
    const/high16 v5, 0x3f800000    # 1.0f

    .line 472
    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 475
    .restart local v1    # "result":I
    const/high16 v4, -0x80000000

    if-ne v2, v4, :cond_1

    .line 476
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    .line 491
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 492
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 494
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    .line 496
    move v0, v2

    .line 505
    .local v0, "result":I
    :cond_0
    :goto_0
    return v0

    .line 499
    .end local v0    # "result":I
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    mul-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getPaddingBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    float-to-int v0, v3

    .line 501
    .restart local v0    # "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    .line 502
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 399
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 400
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 200
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    .line 206
    .local v3, "count":I
    if-eqz v3, :cond_0

    .line 210
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-lt v0, v3, :cond_2

    .line 211
    add-int/lit8 v17, v3, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 219
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_6

    .line 220
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getWidth()I

    move-result v12

    .line 221
    .local v12, "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getPaddingLeft()I

    move-result v11

    .line 222
    .local v11, "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getPaddingRight()I

    move-result v10

    .line 223
    .local v10, "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getPaddingTop()I

    move-result v15

    .line 231
    .local v15, "shortPaddingBefore":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    const/high16 v18, 0x40400000    # 3.0f

    mul-float v16, v17, v18

    .line 232
    .local v16, "threeRadius":F
    int-to-float v0, v15

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v14, v17, v18

    .line 233
    .local v14, "shortOffset":F
    int-to-float v0, v11

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    move/from16 v18, v0

    add-float v9, v17, v18

    .line 234
    .local v9, "longOffset":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCentered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 235
    sub-int v17, v12, v11

    sub-int v17, v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    int-to-float v0, v3

    move/from16 v18, v0

    mul-float v18, v18, v16

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    add-float v9, v9, v17

    .line 241
    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    .line 242
    .local v13, "pageFillRadius":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_4

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v17

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    sub-float v13, v13, v17

    .line 247
    :cond_4
    const/4 v8, 0x0

    .local v8, "iLoop":I
    :goto_2
    if-lt v8, v3, :cond_7

    .line 268
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mSnapPage:I

    move/from16 v17, v0

    :goto_3
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v4, v17, v16

    .line 269
    .local v4, "cx":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mSnap:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 270
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPageOffset:F

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v4, v4, v17

    .line 272
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_c

    .line 273
    add-float v5, v9, v4

    .line 274
    .local v5, "dX":F
    move v6, v14

    .line 279
    .local v6, "dY":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 225
    .end local v4    # "cx":F
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v8    # "iLoop":I
    .end local v9    # "longOffset":F
    .end local v10    # "longPaddingAfter":I
    .end local v11    # "longPaddingBefore":I
    .end local v12    # "longSize":I
    .end local v13    # "pageFillRadius":F
    .end local v14    # "shortOffset":F
    .end local v15    # "shortPaddingBefore":I
    .end local v16    # "threeRadius":F
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getHeight()I

    move-result v12

    .line 226
    .restart local v12    # "longSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getPaddingTop()I

    move-result v11

    .line 227
    .restart local v11    # "longPaddingBefore":I
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getPaddingBottom()I

    move-result v10

    .line 228
    .restart local v10    # "longPaddingAfter":I
    invoke-virtual/range {p0 .. p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getPaddingLeft()I

    move-result v15

    .restart local v15    # "shortPaddingBefore":I
    goto/16 :goto_1

    .line 248
    .restart local v8    # "iLoop":I
    .restart local v9    # "longOffset":F
    .restart local v13    # "pageFillRadius":F
    .restart local v14    # "shortOffset":F
    .restart local v16    # "threeRadius":F
    :cond_7
    int-to-float v0, v8

    move/from16 v17, v0

    mul-float v17, v17, v16

    add-float v7, v9, v17

    .line 249
    .local v7, "drawLong":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mOrientation:I

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 250
    move v5, v7

    .line 251
    .restart local v5    # "dX":F
    move v6, v14

    .line 257
    .restart local v6    # "dY":F
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Paint;->getAlpha()I

    move-result v17

    if-lez v17, :cond_8

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v5, v6, v13, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 262
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    cmpl-float v17, v13, v17

    if-eqz v17, :cond_9

    .line 263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v5, v6, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 247
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 253
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    :cond_a
    move v5, v14

    .line 254
    .restart local v5    # "dX":F
    move v6, v7

    .restart local v6    # "dY":F
    goto :goto_5

    .line 268
    .end local v5    # "dX":F
    .end local v6    # "dY":F
    .end local v7    # "drawLong":F
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    move/from16 v17, v0

    goto/16 :goto_3

    .line 276
    .restart local v4    # "cx":F
    :cond_c
    move v5, v14

    .line 277
    .restart local v5    # "dX":F
    add-float v6, v9, v4

    .restart local v6    # "dY":F
    goto/16 :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 447
    iget v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 448
    invoke-direct {p0, p1}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->measureLong(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->measureShort(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 452
    :goto_0
    return-void

    .line 450
    :cond_0
    invoke-direct {p0, p1}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->measureShort(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->measureLong(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 404
    iput p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mScrollState:I

    .line 406
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 409
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 413
    iput p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    .line 414
    iput p2, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPageOffset:F

    .line 415
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 417
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 420
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 424
    iget-boolean v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_1

    .line 425
    :cond_0
    iput p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    .line 426
    iput p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mSnapPage:I

    .line 427
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_2

    .line 431
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 433
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 510
    move-object v0, p1

    check-cast v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;

    .line 511
    .local v0, "savedState":Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;
    invoke-virtual {v0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 512
    iget v1, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    .line 513
    iget v1, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;->currentPage:I

    iput v1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mSnapPage:I

    .line 514
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->requestLayout()V

    .line 515
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 519
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 520
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;

    invoke-direct {v0, v1}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 521
    .local v0, "savedState":Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;
    iget v2, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    iput v2, v0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator$SavedState;->currentPage:I

    .line 522
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 284
    const/4 v12, 0x1

    .line 362
    :goto_0
    return v12

    .line 286
    :cond_0
    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v12

    if-nez v12, :cond_2

    .line 287
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v12

    and-int/lit16 v0, v12, 0xff

    .line 291
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 362
    :cond_3
    :goto_1
    :pswitch_0
    const/4 v12, 0x1

    goto :goto_0

    .line 293
    :pswitch_1
    const/4 v12, 0x0

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mActivePointerId:I

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    iput v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mLastMotionX:F

    goto :goto_1

    .line 298
    :pswitch_2
    iget v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 299
    .local v1, "activePointerIndex":I
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 300
    .local v11, "x":F
    iget v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mLastMotionX:F

    sub-float v3, v11, v12

    .line 302
    .local v3, "deltaX":F
    iget-boolean v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_4

    .line 303
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget v13, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mTouchSlop:I

    int-to-float v13, v13

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    .line 304
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mIsDragging:Z

    .line 308
    :cond_4
    iget-boolean v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mIsDragging:Z

    if-eqz v12, :cond_3

    .line 309
    iput v11, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mLastMotionX:F

    .line 310
    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-nez v12, :cond_5

    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->beginFakeDrag()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 311
    :cond_5
    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12, v3}, Landroid/support/v4/view/ViewPager;->fakeDragBy(F)V

    goto :goto_1

    .line 320
    .end local v1    # "activePointerIndex":I
    .end local v3    # "deltaX":F
    .end local v11    # "x":F
    :pswitch_3
    iget-boolean v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mIsDragging:Z

    if-nez v12, :cond_9

    .line 321
    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 322
    .local v2, "count":I
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->getWidth()I

    move-result v10

    .line 323
    .local v10, "width":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v4, v12, v13

    .line 324
    .local v4, "halfWidth":F
    int-to-float v12, v10

    const/high16 v13, 0x40c00000    # 6.0f

    div-float v9, v12, v13

    .line 326
    .local v9, "sixthWidth":F
    iget v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    if-lez v12, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    sub-float v13, v4, v9

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    .line 327
    const/4 v12, 0x3

    if-eq v0, v12, :cond_6

    .line 328
    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 330
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 331
    :cond_7
    iget v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v2, -0x1

    if-ge v12, v13, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    add-float v13, v4, v9

    cmpl-float v12, v12, v13

    if-lez v12, :cond_9

    .line 332
    const/4 v12, 0x3

    if-eq v0, v12, :cond_8

    .line 333
    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v13, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 335
    :cond_8
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 339
    .end local v2    # "count":I
    .end local v4    # "halfWidth":F
    .end local v9    # "sixthWidth":F
    .end local v10    # "width":I
    :cond_9
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mIsDragging:Z

    .line 340
    const/4 v12, -0x1

    iput v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mActivePointerId:I

    .line 341
    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->isFakeDragging()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPager;->endFakeDrag()V

    goto/16 :goto_1

    .line 345
    :pswitch_4
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v5

    .line 346
    .local v5, "index":I
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mLastMotionX:F

    .line 347
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mActivePointerId:I

    goto/16 :goto_1

    .line 352
    .end local v5    # "index":I
    :pswitch_5
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v8

    .line 353
    .local v8, "pointerIndex":I
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 354
    .local v7, "pointerId":I
    iget v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mActivePointerId:I

    if-ne v7, v12, :cond_a

    .line 355
    if-nez v8, :cond_b

    const/4 v6, 0x1

    .line 356
    .local v6, "newPointerIndex":I
    :goto_2
    invoke-static {p1, v6}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    iput v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mActivePointerId:I

    .line 358
    .end local v6    # "newPointerIndex":I
    :cond_a
    iget v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mActivePointerId:I

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    invoke-static {p1, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    iput v12, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mLastMotionX:F

    goto/16 :goto_1

    .line 355
    :cond_b
    const/4 v6, 0x0

    goto :goto_2

    .line 291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public setCentered(Z)V
    .locals 0
    .param p1, "centered"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCentered:Z

    .line 120
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 121
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2
    .param p1, "item"    # I

    .prologue
    .line 389
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 393
    iput p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mCurrentPage:I

    .line 394
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 395
    return-void
.end method

.method public setFillColor(I)V
    .locals 1
    .param p1, "fillColor"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 139
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 438
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 146
    packed-switch p1, :pswitch_data_0

    .line 154
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Orientation must be either HORIZONTAL or VERTICAL."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :pswitch_0
    iput p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mOrientation:I

    .line 150
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->requestLayout()V

    .line 156
    return-void

    .line 146
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1
    .param p1, "pageColor"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 130
    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    .line 181
    iput p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mRadius:F

    .line 182
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 183
    return-void
.end method

.method public setSnap(Z)V
    .locals 0
    .param p1, "snap"    # Z

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mSnap:Z

    .line 191
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 192
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1
    .param p1, "strokeColor"    # I

    .prologue
    .line 163
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 165
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1
    .param p1, "strokeWidth"    # F

    .prologue
    .line 172
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 173
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    .line 174
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 367
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 379
    :goto_0
    return-void

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ViewPager does not have adapter instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_2
    iput-object p1, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 377
    iget-object v0, p0, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 378
    invoke-virtual {p0}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0
    .param p1, "view"    # Landroid/support/v4/view/ViewPager;
    .param p2, "initialPosition"    # I

    .prologue
    .line 383
    invoke-virtual {p0, p1}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 384
    invoke-virtual {p0, p2}, Lcom/pubinfo/freewifialliance/view/CirclePageIndicator;->setCurrentItem(I)V

    .line 385
    return-void
.end method
