.class public Lcom/cat/list/XListView;
.super Landroid/widget/ListView;
.source "XListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cat/list/XListView$IXListViewListener;,
        Lcom/cat/list/XListView$OnXScrollListener;
    }
.end annotation


# static fields
.field private static final OFFSET_RADIO:F = 1.8f

.field private static final PULL_LOAD_MORE_DELTA:I = 0x32

.field private static final SCROLLBACK_FOOTER:I = 0x1

.field private static final SCROLLBACK_HEADER:I = 0x0

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private mEnablePullLoad:Z

.field private mEnablePullRefresh:Z

.field private mHeaderTimeView:Landroid/widget/TextView;

.field private mHeaderView:Lcom/cat/list/XListViewHeader;

.field private mHeaderViewContent:Landroid/widget/RelativeLayout;

.field private mHeaderViewHeight:I

.field private mIsFooterReady:Z

.field private mLastY:F

.field private mListViewListener:Lcom/cat/list/XListView$IXListViewListener;

.field private mPullLoading:Z

.field private mPullRefreshing:Z

.field private mScrollBack:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalItemCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 29
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cat/list/XListView;->mLastY:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cat/list/XListView;->mEnablePullRefresh:Z

    .line 44
    iput-boolean v1, p0, Lcom/cat/list/XListView;->mPullRefreshing:Z

    .line 49
    iput-boolean v1, p0, Lcom/cat/list/XListView;->mIsFooterReady:Z

    .line 71
    invoke-direct {p0, p1}, Lcom/cat/list/XListView;->initWithContext(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cat/list/XListView;->mLastY:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cat/list/XListView;->mEnablePullRefresh:Z

    .line 44
    iput-boolean v1, p0, Lcom/cat/list/XListView;->mPullRefreshing:Z

    .line 49
    iput-boolean v1, p0, Lcom/cat/list/XListView;->mIsFooterReady:Z

    .line 76
    invoke-direct {p0, p1}, Lcom/cat/list/XListView;->initWithContext(Landroid/content/Context;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/cat/list/XListView;->mLastY:F

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/cat/list/XListView;->mEnablePullRefresh:Z

    .line 44
    iput-boolean v1, p0, Lcom/cat/list/XListView;->mPullRefreshing:Z

    .line 49
    iput-boolean v1, p0, Lcom/cat/list/XListView;->mIsFooterReady:Z

    .line 81
    invoke-direct {p0, p1}, Lcom/cat/list/XListView;->initWithContext(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method static synthetic access$0(Lcom/cat/list/XListView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1(Lcom/cat/list/XListView;I)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/cat/list/XListView;->mHeaderViewHeight:I

    return-void
.end method

.method private initWithContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/cat/list/XListView;->mScroller:Landroid/widget/Scroller;

    .line 88
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 91
    new-instance v0, Lcom/cat/list/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/cat/list/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    .line 92
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    .line 93
    const v1, 0x7f0a00f8

    invoke-virtual {v0, v1}, Lcom/cat/list/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 92
    iput-object v0, p0, Lcom/cat/list/XListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    .line 94
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    .line 95
    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Lcom/cat/list/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 94
    iput-object v0, p0, Lcom/cat/list/XListView;->mHeaderTimeView:Landroid/widget/TextView;

    .line 96
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    invoke-virtual {p0, v0}, Lcom/cat/list/XListView;->addHeaderView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    invoke-virtual {v0}, Lcom/cat/list/XListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 100
    new-instance v1, Lcom/cat/list/XListView$1;

    invoke-direct {v1, p0}, Lcom/cat/list/XListView$1;-><init>(Lcom/cat/list/XListView;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 108
    return-void
.end method

.method private invokeOnScrolling()V
    .locals 2

    .prologue
    .line 159
    iget-object v1, p0, Lcom/cat/list/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v1, v1, Lcom/cat/list/XListView$OnXScrollListener;

    if-eqz v1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/cat/list/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    check-cast v0, Lcom/cat/list/XListView$OnXScrollListener;

    .line 161
    .local v0, "l":Lcom/cat/list/XListView$OnXScrollListener;
    invoke-interface {v0, p0}, Lcom/cat/list/XListView$OnXScrollListener;->onXScrolling(Landroid/view/View;)V

    .line 163
    .end local v0    # "l":Lcom/cat/list/XListView$OnXScrollListener;
    :cond_0
    return-void
.end method

.method private resetHeaderHeight()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    invoke-virtual {v0}, Lcom/cat/list/XListViewHeader;->getVisiableHeight()I

    move-result v2

    .line 183
    .local v2, "height":I
    if-nez v2, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-boolean v0, p0, Lcom/cat/list/XListView;->mPullRefreshing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/cat/list/XListView;->mHeaderViewHeight:I

    if-le v2, v0, :cond_0

    .line 189
    :cond_2
    const/4 v6, 0x0

    .line 191
    .local v6, "finalHeight":I
    iget-boolean v0, p0, Lcom/cat/list/XListView;->mPullRefreshing:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/cat/list/XListView;->mHeaderViewHeight:I

    if-le v2, v0, :cond_3

    .line 192
    iget v6, p0, Lcom/cat/list/XListView;->mHeaderViewHeight:I

    .line 194
    :cond_3
    iput v1, p0, Lcom/cat/list/XListView;->mScrollBack:I

    .line 195
    iget-object v0, p0, Lcom/cat/list/XListView;->mScroller:Landroid/widget/Scroller;

    sub-int v4, v6, v2

    .line 196
    const/16 v5, 0x190

    move v3, v1

    .line 195
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 198
    invoke-virtual {p0}, Lcom/cat/list/XListView;->invalidate()V

    goto :goto_0
.end method

.method private updateHeaderHeight(F)V
    .locals 4
    .param p1, "delta"    # F

    .prologue
    const/4 v3, 0x0

    .line 166
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    float-to-int v1, p1

    .line 167
    iget-object v2, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    invoke-virtual {v2}, Lcom/cat/list/XListViewHeader;->getVisiableHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 166
    invoke-virtual {v0, v1}, Lcom/cat/list/XListViewHeader;->setVisiableHeight(I)V

    .line 168
    iget-boolean v0, p0, Lcom/cat/list/XListView;->mEnablePullRefresh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/cat/list/XListView;->mPullRefreshing:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    invoke-virtual {v0}, Lcom/cat/list/XListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/cat/list/XListView;->mHeaderViewHeight:I

    if-le v0, v1, :cond_1

    .line 170
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/cat/list/XListViewHeader;->setState(I)V

    .line 175
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/cat/list/XListView;->setSelection(I)V

    .line 176
    return-void

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    invoke-virtual {v0, v3}, Lcom/cat/list/XListViewHeader;->setState(I)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/cat/list/XListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget v0, p0, Lcom/cat/list/XListView;->mScrollBack:I

    if-nez v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    iget-object v1, p0, Lcom/cat/list/XListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/cat/list/XListViewHeader;->setVisiableHeight(I)V

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/cat/list/XListView;->postInvalidate()V

    .line 249
    invoke-direct {p0}, Lcom/cat/list/XListView;->invokeOnScrolling()V

    .line 251
    :cond_1
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 252
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 270
    iput p4, p0, Lcom/cat/list/XListView;->mTotalItemCount:I

    .line 271
    iget-object v0, p0, Lcom/cat/list/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/cat/list/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 275
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 261
    iget-object v0, p0, Lcom/cat/list/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/cat/list/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 264
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v2, -0x40800000    # -1.0f

    .line 203
    iget v1, p0, Lcom/cat/list/XListView;->mLastY:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/cat/list/XListView;->mLastY:F

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 224
    :pswitch_0
    iput v2, p0, Lcom/cat/list/XListView;->mLastY:F

    .line 225
    invoke-virtual {p0}, Lcom/cat/list/XListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_2

    .line 227
    iget-boolean v1, p0, Lcom/cat/list/XListView;->mEnablePullRefresh:Z

    if-eqz v1, :cond_1

    .line 228
    iget-object v1, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    invoke-virtual {v1}, Lcom/cat/list/XListViewHeader;->getVisiableHeight()I

    move-result v1

    iget v2, p0, Lcom/cat/list/XListView;->mHeaderViewHeight:I

    if-le v1, v2, :cond_1

    .line 229
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/cat/list/XListView;->mPullRefreshing:Z

    .line 230
    iget-object v1, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/cat/list/XListViewHeader;->setState(I)V

    .line 231
    iget-object v1, p0, Lcom/cat/list/XListView;->mListViewListener:Lcom/cat/list/XListView$IXListViewListener;

    if-eqz v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/cat/list/XListView;->mListViewListener:Lcom/cat/list/XListView$IXListViewListener;

    invoke-interface {v1}, Lcom/cat/list/XListView$IXListViewListener;->onRefresh()V

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/cat/list/XListView;->resetHeaderHeight()V

    .line 239
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 209
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/cat/list/XListView;->mLastY:F

    goto :goto_0

    .line 212
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget v2, p0, Lcom/cat/list/XListView;->mLastY:F

    sub-float v0, v1, v2

    .line 213
    .local v0, "deltaY":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/cat/list/XListView;->mLastY:F

    .line 214
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6570\u636e\u76d1\u6d4b\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/cat/list/XListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    invoke-virtual {p0}, Lcom/cat/list/XListView;->getLastVisiblePosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/cat/list/XListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_2

    .line 217
    iget-object v1, p0, Lcom/cat/list/XListView;->mHeaderView:Lcom/cat/list/XListViewHeader;

    invoke-virtual {v1}, Lcom/cat/list/XListViewHeader;->getVisiableHeight()I

    move-result v1

    if-gtz v1, :cond_3

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 219
    :cond_3
    const v1, 0x3fe66666    # 1.8f

    div-float v1, v0, v1

    invoke-direct {p0, v1}, Lcom/cat/list/XListView;->updateHeaderHeight(F)V

    .line 220
    invoke-direct {p0}, Lcom/cat/list/XListView;->invokeOnScrolling()V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 113
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/cat/list/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 257
    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/cat/list/XListView;->mEnablePullLoad:Z

    .line 136
    return-void
.end method

.method public setPullRefreshEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/cat/list/XListView;->mEnablePullRefresh:Z

    .line 122
    iget-boolean v0, p0, Lcom/cat/list/XListView;->mEnablePullRefresh:Z

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 155
    iget-object v0, p0, Lcom/cat/list/XListView;->mHeaderTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public setXListViewListener(Lcom/cat/list/XListView$IXListViewListener;)V
    .locals 0
    .param p1, "l"    # Lcom/cat/list/XListView$IXListViewListener;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/cat/list/XListView;->mListViewListener:Lcom/cat/list/XListView$IXListViewListener;

    .line 279
    return-void
.end method

.method public stopRefresh()V
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/cat/list/XListView;->mPullRefreshing:Z

    if-eqz v0, :cond_0

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/cat/list/XListView;->mPullRefreshing:Z

    .line 144
    invoke-direct {p0}, Lcom/cat/list/XListView;->resetHeaderHeight()V

    .line 146
    :cond_0
    return-void
.end method
