.class public Lcom/pubinfo/izhejiang/ExpandableTextView2;
.super Landroid/widget/TextView;
.source "ExpandableTextView2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimRunnable;,
        Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;,
        Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimationListener;,
        Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCallBack;,
        Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCollapseListener;,
        Lcom/pubinfo/izhejiang/ExpandableTextView2$OnExpandListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_ANIMATION_DURATION:J = 0x190L

.field private static final DEFAULT_EXPANDED:Z = false

.field private static final DEFAULT_MIN_LINES:I = 0x2

.field public static final EXPANDER_MAX_LINES:I = 0x7fffffff


# instance fields
.field private mAnimating:Z

.field private mAnimationDuration:J

.field private mCollapseHeight:I

.field private mExpandAnim:Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;

.field private mExpanded:Z

.field private mInitialized:Z

.field private mMinLines:I

.field private mNeedExpanded:Z

.field private mOnCollapseListener:Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCollapseListener;

.field private mOnExpandListener:Lcom/pubinfo/izhejiang/ExpandableTextView2$OnExpandListener;

.field private mOriginalHeight:I

.field private mOriginalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mMinLines:I

    .line 48
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    .line 51
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mNeedExpanded:Z

    .line 54
    iput-object v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpandAnim:Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;

    .line 57
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimationDuration:J

    .line 82
    invoke-direct {p0, p1, v2}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mMinLines:I

    .line 48
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    .line 51
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mNeedExpanded:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpandAnim:Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;

    .line 57
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimationDuration:J

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mMinLines:I

    .line 48
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    .line 51
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mNeedExpanded:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpandAnim:Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;

    .line 57
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimationDuration:J

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 93
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/ExpandableTextView2;)Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    return v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/ExpandableTextView2;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalHeight:I

    return v0
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/ExpandableTextView2;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mCollapseHeight:I

    return v0
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/ExpandableTextView2;I)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->changeExpanderHeight(I)V

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/ExpandableTextView2;)J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimationDuration:J

    return-wide v0
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/ExpandableTextView2;Z)V
    .locals 0

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimating:Z

    return-void
.end method

.method static synthetic access$6(Lcom/pubinfo/izhejiang/ExpandableTextView2;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mMinLines:I

    return v0
.end method

.method static synthetic access$7(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->toggleOnCollapseListener()V

    return-void
.end method

.method static synthetic access$8(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V
    .locals 0

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->toggleOnExpandListener()V

    return-void
.end method

.method private changeExpanderHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 296
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 297
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 298
    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    return-void
.end method

.method private getAvailableWidth()I
    .locals 2

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 108
    sget-object v1, Lcom/pubinfo/izhejiang/R$styleable;->ExpandableTextView2:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 109
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    .line 110
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mMinLines:I

    .line 111
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 112
    return-void
.end method

.method private toggleOnCollapseListener()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOnCollapseListener:Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCollapseListener;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOnCollapseListener:Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCollapseListener;

    invoke-interface {v0, p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCollapseListener;->onCollapse(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V

    .line 318
    :cond_0
    return-void
.end method

.method private toggleOnExpandListener()V
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOnExpandListener:Lcom/pubinfo/izhejiang/ExpandableTextView2$OnExpandListener;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOnExpandListener:Lcom/pubinfo/izhejiang/ExpandableTextView2$OnExpandListener;

    invoke-interface {v0, p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2$OnExpandListener;->onExpand(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V

    .line 309
    :cond_0
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->collapse(Z)V

    .line 216
    return-void
.end method

.method public collapse(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 239
    :goto_0
    return-void

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimating:Z

    .line 232
    new-instance v0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;-><init>(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->startAnimation(Landroid/view/animation/Animation;)V

    .line 238
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    goto :goto_0

    .line 235
    :cond_1
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mMinLines:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setMaxLines(I)V

    .line 236
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->toggleOnCollapseListener()V

    goto :goto_1
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->expand(Z)V

    .line 185
    return-void
.end method

.method public expand(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 196
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 200
    :cond_0
    if-eqz p1, :cond_1

    .line 201
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimating:Z

    .line 203
    new-instance v0, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2$ExpandAnimation;-><init>(Lcom/pubinfo/izhejiang/ExpandableTextView2;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->startAnimation(Landroid/view/animation/Animation;)V

    .line 208
    :goto_1
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    goto :goto_0

    .line 205
    :cond_1
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setMaxLines(I)V

    .line 206
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->toggleOnExpandListener()V

    goto :goto_1
.end method

.method public foceInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 115
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mInitialized:Z

    .line 116
    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalWidth:I

    .line 117
    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalHeight:I

    .line 119
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setMaxLines(I)V

    .line 120
    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mCollapseHeight:I

    .line 121
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mNeedExpanded:Z

    .line 122
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    .line 123
    return-void
.end method

.method public getExpanded()Z
    .locals 1

    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    return v0
.end method

.method public getTextViewNeededExpand()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mNeedExpanded:Z

    return v0
.end method

.method public isOverFlowed()Z
    .locals 3

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 327
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 328
    .local v1, "width":F
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getAvailableWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 329
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x1

    .line 127
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 128
    iget-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mInitialized:Z

    if-nez v1, :cond_3

    .line 130
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalWidth:I

    .line 131
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalHeight:I

    .line 132
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mMinLines:I

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setMaxLines(I)V

    .line 133
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 134
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mCollapseHeight:I

    .line 135
    iput-boolean v3, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mInitialized:Z

    .line 136
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalHeight:I

    iget v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mCollapseHeight:I

    if-le v1, v2, :cond_1

    .line 137
    iput-boolean v3, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mNeedExpanded:Z

    .line 141
    :goto_0
    iget v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalWidth:I

    iget-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalHeight:I

    :goto_1
    invoke-virtual {p0, v2, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setMeasuredDimension(II)V

    .line 155
    :cond_0
    :goto_2
    return-void

    .line 139
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mNeedExpanded:Z

    goto :goto_0

    .line 141
    :cond_2
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mCollapseHeight:I

    goto :goto_1

    .line 145
    :cond_3
    const v1, 0x7f0a0012

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimating:Z

    if-nez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalWidth:I

    .line 148
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getLineHeight()I

    move-result v0

    .line 149
    .local v0, "lineHeight":I
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->getLineCount()I

    move-result v1

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalHeight:I

    .line 150
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mMinLines:I

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mCollapseHeight:I

    .line 151
    iget v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalWidth:I

    iget-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOriginalHeight:I

    :goto_3
    invoke-virtual {p0, v2, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mCollapseHeight:I

    goto :goto_3
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mAnimating:Z

    .line 245
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->setMaxLines(I)V

    .line 246
    return-void
.end method

.method public setOnCollapseListener(Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCollapseListener;)Lcom/pubinfo/izhejiang/ExpandableTextView2;
    .locals 0
    .param p1, "onCollapseListener"    # Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCollapseListener;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOnCollapseListener:Lcom/pubinfo/izhejiang/ExpandableTextView2$OnCollapseListener;

    .line 286
    return-object p0
.end method

.method public setOnExpandListener(Lcom/pubinfo/izhejiang/ExpandableTextView2$OnExpandListener;)Lcom/pubinfo/izhejiang/ExpandableTextView2;
    .locals 0
    .param p1, "onExpandListener"    # Lcom/pubinfo/izhejiang/ExpandableTextView2$OnExpandListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mOnExpandListener:Lcom/pubinfo/izhejiang/ExpandableTextView2$OnExpandListener;

    .line 275
    return-object p0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->toggle(Z)V

    .line 170
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView2;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->collapse(Z)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView2;->expand(Z)V

    goto :goto_0
.end method
