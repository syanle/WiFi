.class public Lcom/pubinfo/izhejiang/ExpandableTextView3;
.super Landroid/widget/TextView;
.source "ExpandableTextView3.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;,
        Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimationListener;,
        Lcom/pubinfo/izhejiang/ExpandableTextView3$OnCollapseListener;,
        Lcom/pubinfo/izhejiang/ExpandableTextView3$OnExpandListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:J = 0x190L

.field private static final DEFAULT_EXPANDED:Z = false

.field private static final DEFAULT_MIN_LINES:I = 0x1

.field public static final EXPANDER_MAX_LINES:I = 0x7fffffff


# instance fields
.field private mAnimating:Z

.field private mAnimationDuration:J

.field private mCollapseHeight:I

.field private mExpanded:Z

.field private mInitialized:Z

.field private mMinLines:I

.field private mOnCollapseListener:Lcom/pubinfo/izhejiang/ExpandableTextView3$OnCollapseListener;

.field private mOnExpandListener:Lcom/pubinfo/izhejiang/ExpandableTextView3$OnExpandListener;

.field private mOriginalHeight:I

.field private mOriginalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mMinLines:I

    .line 29
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimationDuration:J

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mMinLines:I

    .line 29
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimationDuration:J

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mMinLines:I

    .line 29
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimationDuration:J

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/ExpandableTextView3;)Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    return v0
.end method

.method static synthetic access$1(Lcom/pubinfo/izhejiang/ExpandableTextView3;)I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalHeight:I

    return v0
.end method

.method static synthetic access$2(Lcom/pubinfo/izhejiang/ExpandableTextView3;)I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mCollapseHeight:I

    return v0
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/ExpandableTextView3;)J
    .locals 2

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimationDuration:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/ExpandableTextView3;I)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->changeExpanderHeight(I)V

    return-void
.end method

.method static synthetic access$5(Lcom/pubinfo/izhejiang/ExpandableTextView3;Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimating:Z

    return-void
.end method

.method static synthetic access$6(Lcom/pubinfo/izhejiang/ExpandableTextView3;)I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mMinLines:I

    return v0
.end method

.method static synthetic access$7(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->toggleOnCollapseListener()V

    return-void
.end method

.method static synthetic access$8(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->toggleOnExpandListener()V

    return-void
.end method

.method private changeExpanderHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 191
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 192
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 193
    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    sget-object v1, Lcom/pubinfo/izhejiang/R$styleable;->ExpandableTextView2:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 53
    .local v0, "typedArray":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    .line 54
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mMinLines:I

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method

.method private toggleOnCollapseListener()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOnCollapseListener:Lcom/pubinfo/izhejiang/ExpandableTextView3$OnCollapseListener;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOnCollapseListener:Lcom/pubinfo/izhejiang/ExpandableTextView3$OnCollapseListener;

    invoke-interface {v0, p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3$OnCollapseListener;->onCollapse(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V

    .line 147
    :cond_0
    return-void
.end method

.method private toggleOnExpandListener()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOnExpandListener:Lcom/pubinfo/izhejiang/ExpandableTextView3$OnExpandListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOnExpandListener:Lcom/pubinfo/izhejiang/ExpandableTextView3$OnExpandListener;

    invoke-interface {v0, p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3$OnExpandListener;->onExpand(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public collapse()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->collapse(Z)V

    .line 116
    return-void
.end method

.method public collapse(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 131
    :goto_0
    return-void

    .line 123
    :cond_0
    if-eqz p1, :cond_1

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimating:Z

    .line 125
    new-instance v0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;-><init>(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->startAnimation(Landroid/view/animation/Animation;)V

    .line 130
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    goto :goto_0

    .line 127
    :cond_1
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mMinLines:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->setMaxLines(I)V

    .line 128
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->toggleOnCollapseListener()V

    goto :goto_1
.end method

.method public expand()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->expand(Z)V

    .line 97
    return-void
.end method

.method public expand(Z)V
    .locals 2
    .param p1, "animated"    # Z

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 104
    :cond_0
    if-eqz p1, :cond_1

    .line 105
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimating:Z

    .line 106
    new-instance v0, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3$ExpandAnimation;-><init>(Lcom/pubinfo/izhejiang/ExpandableTextView3;)V

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    :goto_1
    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    goto :goto_0

    .line 108
    :cond_1
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->setMaxLines(I)V

    .line 109
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->toggleOnExpandListener()V

    goto :goto_1
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimating:Z

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const v2, 0x7f0a0012

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 63
    iget-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mInitialized:Z

    if-nez v1, :cond_2

    .line 64
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalWidth:I

    .line 65
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalHeight:I

    .line 66
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mMinLines:I

    invoke-virtual {p0, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->setMaxLines(I)V

    .line 67
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 68
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mCollapseHeight:I

    .line 69
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mInitialized:Z

    .line 70
    iget v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalWidth:I

    iget-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalHeight:I

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->setMeasuredDimension(II)V

    .line 79
    :cond_0
    :goto_1
    return-void

    .line 70
    :cond_1
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mCollapseHeight:I

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimating:Z

    if-nez v1, :cond_0

    .line 72
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->setTag(ILjava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalWidth:I

    .line 74
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->getLineHeight()I

    move-result v0

    .line 75
    .local v0, "lineHeight":I
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->getLineCount()I

    move-result v1

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalHeight:I

    .line 76
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mMinLines:I

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mCollapseHeight:I

    .line 77
    iget v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalWidth:I

    iget-boolean v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOriginalHeight:I

    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mCollapseHeight:I

    goto :goto_2
.end method

.method public setAnimationDuration(J)V
    .locals 0
    .param p1, "animationDuration"    # J

    .prologue
    .line 184
    iput-wide p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimationDuration:J

    .line 185
    return-void
.end method

.method public setExpanded(Z)V
    .locals 1
    .param p1, "expanded"    # Z

    .prologue
    .line 174
    iput-boolean p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mAnimating:Z

    .line 176
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->setMaxLines(I)V

    .line 177
    return-void
.end method

.method public setOnCollapseListener(Lcom/pubinfo/izhejiang/ExpandableTextView3$OnCollapseListener;)Lcom/pubinfo/izhejiang/ExpandableTextView3;
    .locals 0
    .param p1, "onCollapseListener"    # Lcom/pubinfo/izhejiang/ExpandableTextView3$OnCollapseListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOnCollapseListener:Lcom/pubinfo/izhejiang/ExpandableTextView3$OnCollapseListener;

    .line 160
    return-object p0
.end method

.method public setOnExpandListener(Lcom/pubinfo/izhejiang/ExpandableTextView3$OnExpandListener;)Lcom/pubinfo/izhejiang/ExpandableTextView3;
    .locals 0
    .param p1, "onExpandListener"    # Lcom/pubinfo/izhejiang/ExpandableTextView3$OnExpandListener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mOnExpandListener:Lcom/pubinfo/izhejiang/ExpandableTextView3$OnExpandListener;

    .line 155
    return-object p0
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->toggle(Z)V

    .line 85
    return-void
.end method

.method public toggle(Z)V
    .locals 1
    .param p1, "animated"    # Z

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView3;->mExpanded:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->collapse(Z)V

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {p0, p1}, Lcom/pubinfo/izhejiang/ExpandableTextView3;->expand(Z)V

    goto :goto_0
.end method
