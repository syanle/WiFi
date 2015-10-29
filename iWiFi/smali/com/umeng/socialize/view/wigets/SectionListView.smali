.class public Lcom/umeng/socialize/view/wigets/SectionListView;
.super Landroid/widget/ListView;
.source "SectionListView.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/umeng/socialize/view/wigets/b;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHeaderViewVisible:Z

.field private mHeaderViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/umeng/socialize/view/wigets/SectionListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/view/wigets/SectionListView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 127
    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0xff

    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mAdapter:Lcom/umeng/socialize/view/wigets/b;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/view/wigets/b;->a(I)I

    move-result v0

    .line 67
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 69
    :pswitch_0
    iput-boolean v1, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mAdapter:Lcom/umeng/socialize/view/wigets/b;

    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2, p1, v4}, Lcom/umeng/socialize/view/wigets/b;->a(Landroid/view/View;II)V

    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    iget v2, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewWidth:I

    iget v3, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 78
    :cond_2
    iput-boolean v5, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewVisible:Z

    goto :goto_0

    .line 83
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/view/wigets/SectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 86
    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 89
    if-ge v0, v2, :cond_4

    .line 90
    sub-int/2addr v0, v2

    .line 97
    :goto_1
    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mAdapter:Lcom/umeng/socialize/view/wigets/b;

    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3, p1, v4}, Lcom/umeng/socialize/view/wigets/b;->a(Landroid/view/View;II)V

    .line 98
    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 99
    iget-object v2, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    iget v3, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewWidth:I

    iget v4, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewHeight:I

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 101
    :cond_3
    iput-boolean v5, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewVisible:Z

    goto :goto_0

    :cond_4
    move v0, v1

    .line 94
    goto :goto_1

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 110
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 111
    iget-boolean v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/SectionListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/umeng/socialize/view/wigets/SectionListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 114
    :cond_0
    return-void
.end method

.method public bridge synthetic getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/SectionListView;->getAdapter()Lcom/umeng/socialize/view/wigets/b;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lcom/umeng/socialize/view/wigets/b;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mAdapter:Lcom/umeng/socialize/view/wigets/b;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 52
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 54
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewWidth:I

    iget v2, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 57
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/SectionListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SectionListView;->configureHeaderView(I)V

    .line 59
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 43
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/umeng/socialize/view/wigets/SectionListView;->measureChild(Landroid/view/View;II)V

    .line 45
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewWidth:I

    .line 46
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderViewHeight:I

    .line 48
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .prologue
    .line 131
    instance-of v0, p1, Lcom/umeng/socialize/view/wigets/b;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-class v2, Lcom/umeng/socialize/view/wigets/SectionListView;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " must use adapter of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/umeng/socialize/view/wigets/b;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mAdapter:Lcom/umeng/socialize/view/wigets/b;

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :cond_1
    move-object v0, p1

    .line 140
    check-cast v0, Lcom/umeng/socialize/view/wigets/b;

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mAdapter:Lcom/umeng/socialize/view/wigets/b;

    move-object v0, p1

    .line 142
    check-cast v0, Lcom/umeng/socialize/view/wigets/b;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 29
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/SectionListView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/SectionListView;->setFadingEdgeLength(I)V

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/SectionListView;->requestLayout()V

    .line 38
    return-void
.end method
