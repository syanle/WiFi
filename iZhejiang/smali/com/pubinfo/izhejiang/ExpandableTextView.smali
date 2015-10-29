.class public Lcom/pubinfo/izhejiang/ExpandableTextView;
.super Landroid/widget/TextView;
.source "ExpandableTextView.java"


# static fields
.field private static MAX_LINE_NUM:I

.field private static MIN_LINE_NUM:I


# instance fields
.field bitmapDown:Landroid/graphics/Bitmap;

.field bitmapUp:Landroid/graphics/Bitmap;

.field h:I

.field private lineNum:I

.field private mIsExpanded:Z

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field tag:I

.field w:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x1

    sput v0, Lcom/pubinfo/izhejiang/ExpandableTextView;->MIN_LINE_NUM:I

    .line 12
    const/16 v0, 0x14

    sput v0, Lcom/pubinfo/izhejiang/ExpandableTextView;->MAX_LINE_NUM:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    sget v0, Lcom/pubinfo/izhejiang/ExpandableTextView;->MIN_LINE_NUM:I

    iput v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->lineNum:I

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->mIsExpanded:Z

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/pubinfo/izhejiang/ExpandableTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/pubinfo/izhejiang/ExpandableTextView;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->lineNum:I

    return v0
.end method

.method static synthetic access$1()I
    .locals 1

    .prologue
    .line 11
    sget v0, Lcom/pubinfo/izhejiang/ExpandableTextView;->MIN_LINE_NUM:I

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 12
    sget v0, Lcom/pubinfo/izhejiang/ExpandableTextView;->MAX_LINE_NUM:I

    return v0
.end method

.method static synthetic access$3(Lcom/pubinfo/izhejiang/ExpandableTextView;I)V
    .locals 0

    .prologue
    .line 13
    iput p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->lineNum:I

    return-void
.end method

.method static synthetic access$4(Lcom/pubinfo/izhejiang/ExpandableTextView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->lineNum:I

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->setMaxLines(I)V

    .line 29
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->setMinLines(I)V

    .line 30
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 31
    const v1, 0x7f020128

    .line 30
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->bitmapDown:Landroid/graphics/Bitmap;

    .line 32
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 33
    const v1, 0x7f020129

    .line 32
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->bitmapUp:Landroid/graphics/Bitmap;

    .line 34
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->bitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 36
    const v2, 0x7f090003

    .line 35
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 34
    iput v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->w:I

    .line 37
    iget-object v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->bitmapDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 39
    const v2, 0x7f090004

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 37
    iput v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->h:I

    .line 41
    new-instance v0, Lcom/pubinfo/izhejiang/ExpandableTextView$1;

    invoke-direct {v0, p0}, Lcom/pubinfo/izhejiang/ExpandableTextView$1;-><init>(Lcom/pubinfo/izhejiang/ExpandableTextView;)V

    invoke-super {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->mIsExpanded:Z

    return v0
.end method

.method public setMaxLine(I)V
    .locals 0
    .param p1, "line"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->lineNum:I

    .line 118
    invoke-virtual {p0, p1}, Lcom/pubinfo/izhejiang/ExpandableTextView;->setMaxLines(I)V

    .line 119
    return-void
.end method

.method public setMaxLines(I)V
    .locals 4
    .param p1, "maxlines"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 73
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->getLineCount()I

    move-result v0

    sget v1, Lcom/pubinfo/izhejiang/ExpandableTextView;->MIN_LINE_NUM:I

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->getLineCount()I

    move-result v0

    sget v1, Lcom/pubinfo/izhejiang/ExpandableTextView;->MIN_LINE_NUM:I

    if-ne v0, v1, :cond_1

    .line 74
    :cond_0
    iput-boolean v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->mIsExpanded:Z

    .line 76
    :cond_1
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->tag:I

    if-ne v0, v3, :cond_2

    .line 77
    iput-boolean v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->mIsExpanded:Z

    .line 85
    :goto_0
    return-void

    .line 79
    :cond_2
    iget v0, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->lineNum:I

    sget v1, Lcom/pubinfo/izhejiang/ExpandableTextView;->MAX_LINE_NUM:I

    if-ne v0, v1, :cond_3

    .line 80
    iput-boolean v3, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->mIsExpanded:Z

    goto :goto_0

    .line 82
    :cond_3
    iput-boolean v2, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->mIsExpanded:Z

    goto :goto_0
.end method

.method public setMinLines(I)V
    .locals 0
    .param p1, "minlines"    # I

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMinLines(I)V

    .line 96
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/ExpandableTextView;->setClickable(Z)V

    .line 63
    :cond_0
    iput-object p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 64
    return-void
.end method

.method public setTag(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/pubinfo/izhejiang/ExpandableTextView;->tag:I

    .line 68
    return-void
.end method
