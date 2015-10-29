.class public Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;
.super Landroid/widget/LinearLayout;
.source "OrderView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private scrollView:Landroid/widget/ScrollView;

.field private scroller:Landroid/widget/Scroller;

.field private stayView:Landroid/view/View;

.field private stayViewListener:Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;

.field up:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->up:Z

    .line 33
    iput-object p1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->mContext:Landroid/content/Context;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->up:Z

    .line 39
    iput-object p1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->setOrientation(I)V

    .line 46
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->scroller:Landroid/widget/Scroller;

    .line 47
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 56
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->stayView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->scrollView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->stayViewListener:Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;

    if-eqz v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->scrollView:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    .line 58
    .local v2, "y":I
    iget-boolean v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->up:Z

    if-eqz v3, :cond_0

    .line 59
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->stayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    .line 60
    .local v1, "top":I
    if-lt v2, v1, :cond_0

    .line 61
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->stayViewListener:Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;

    invoke-interface {v3}, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;->onStayViewShow()V

    .line 62
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->up:Z

    .line 65
    .end local v1    # "top":I
    :cond_0
    iget-boolean v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->up:Z

    if-nez v3, :cond_1

    .line 66
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->stayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 67
    .local v0, "bottom":I
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->stayView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v0, v3

    if-gt v2, v3, :cond_1

    .line 68
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->stayViewListener:Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;

    invoke-interface {v3}, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;->onStayViewGone()V

    .line 69
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->up:Z

    .line 73
    .end local v0    # "bottom":I
    .end local v2    # "y":I
    :cond_1
    return-void
.end method

.method public setStayView(Landroid/view/View;Landroid/widget/ScrollView;Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;)V
    .locals 0
    .param p1, "stayview"    # Landroid/view/View;
    .param p2, "scrollview"    # Landroid/widget/ScrollView;
    .param p3, "stayViewListener"    # Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->stayView:Landroid/view/View;

    .line 27
    iput-object p2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->scrollView:Landroid/widget/ScrollView;

    .line 28
    iput-object p3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView;->stayViewListener:Lcom/pubinfo/izhejiang/horizontalscrollview/OrderView$StayViewListener;

    .line 29
    return-void
.end method
