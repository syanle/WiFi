.class public Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "MyHorizontalScrollView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$CurrentImageChangeListener;,
        Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyHorizontalScrollView"


# instance fields
.field private mAdapter:Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;

.field private mChildHeight:I

.field private mChildWidth:I

.field private mContainer:Landroid/widget/LinearLayout;

.field private mCountOneScreen:I

.field private mCurrentIndex:I

.field private mFirstView:Landroid/view/View;

.field private mFristIndex:I

.field private mListener:Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$CurrentImageChangeListener;

.field private mOnClickListener:Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$OnItemClickListener;

.field private mScreenWitdh:I

.field private mViewPos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mViewPos:Ljava/util/Map;

    .line 99
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    check-cast v1, Landroid/view/WindowManager;

    .line 100
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 101
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 102
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mScreenWitdh:I

    .line 103
    return-void
.end method


# virtual methods
.method public initDatas(Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;)V
    .locals 6
    .param p1, "mAdapter"    # Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;

    .prologue
    const/4 v5, 0x0

    .line 201
    iput-object p1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mAdapter:Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;

    .line 202
    invoke-virtual {p0, v5}, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    .line 204
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v5, v3, v4}, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 205
    .local v1, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildWidth:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildHeight:I

    if-nez v3, :cond_0

    .line 210
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 212
    .local v2, "w":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 214
    .local v0, "h":I
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 215
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildHeight:I

    .line 216
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildWidth:I

    .line 217
    const-string v3, "MyHorizontalScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildHeight:I

    .line 220
    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mScreenWitdh:I

    iget v4, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildWidth:I

    div-int/2addr v3, v4

    if-nez v3, :cond_1

    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mScreenWitdh:I

    iget v4, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildWidth:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    :goto_0
    iput v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCountOneScreen:I

    .line 222
    const-string v3, "MyHorizontalScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mCountOneScreen = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCountOneScreen:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 223
    const-string v5, " ,mChildWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v0    # "h":I
    .end local v2    # "w":I
    :cond_0
    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCountOneScreen:I

    invoke-virtual {p0, v3}, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->initFirstScreenChildren(I)V

    .line 229
    return-void

    .line 220
    .restart local v0    # "h":I
    .restart local v2    # "w":I
    :cond_1
    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mScreenWitdh:I

    iget v4, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildWidth:I

    div-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_0
.end method

.method public initFirstScreenChildren(I)V
    .locals 5
    .param p1, "mCountOneScreen"    # I

    .prologue
    .line 238
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    .line 239
    iget-object v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 240
    iget-object v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mViewPos:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 242
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 256
    return-void

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mAdapter:Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v3, v4}, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 245
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    iget-object v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 247
    iget-object v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mViewPos:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    iput v0, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCurrentIndex:I

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected loadNextImg()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 118
    iget v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCurrentIndex:I

    iget-object v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mAdapter:Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;

    invoke-virtual {v2}, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 141
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0, v3, v3}, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->scrollTo(II)V

    .line 124
    iget-object v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mViewPos:Ljava/util/Map;

    iget-object v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 128
    iget-object v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mAdapter:Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;

    iget v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCurrentIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCurrentIndex:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v3, v4}, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 129
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    iget-object v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mViewPos:Ljava/util/Map;

    iget v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCurrentIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mFristIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mFristIndex:I

    goto :goto_0
.end method

.method protected loadPreImg()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 148
    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mFristIndex:I

    if-nez v3, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCurrentIndex:I

    iget v4, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCountOneScreen:I

    sub-int v0, v3, v4

    .line 152
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 156
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 157
    .local v1, "oldViewPos":I
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mViewPos:Ljava/util/Map;

    iget-object v4, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 161
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mAdapter:Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0, v4, v5}, Lcom/pubinfo/izhejiang/horizontalscrollview/HorizontalScrollViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 162
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mViewPos:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 164
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildWidth:I

    invoke-virtual {p0, v3, v6}, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->scrollTo(II)V

    .line 168
    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mCurrentIndex:I

    .line 169
    iget v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mFristIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mFristIndex:I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mOnClickListener:Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 291
    iget-object v2, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mOnClickListener:Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$OnItemClickListener;

    iget-object v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mViewPos:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v2, p1, v1}, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$OnItemClickListener;->onClick(Landroid/view/View;I)V

    .line 293
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 289
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mContainer:Landroid/widget/LinearLayout;

    .line 110
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 266
    :pswitch_0
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->getScrollX()I

    move-result v0

    .line 268
    .local v0, "scrollX":I
    iget v1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mChildWidth:I

    if-lt v0, v1, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->loadNextImg()V

    .line 273
    :cond_1
    if-nez v0, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->loadPreImg()V

    goto :goto_0

    .line 261
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setCurrentImageChangeListener(Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$CurrentImageChangeListener;)V
    .locals 0
    .param p1, "mListener"    # Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$CurrentImageChangeListener;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mListener:Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$CurrentImageChangeListener;

    .line 304
    return-void
.end method

.method public setOnItemClickListener(Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$OnItemClickListener;)V
    .locals 0
    .param p1, "mOnClickListener"    # Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$OnItemClickListener;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView;->mOnClickListener:Lcom/pubinfo/izhejiang/horizontalscrollview/MyHorizontalScrollView$OnItemClickListener;

    .line 298
    return-void
.end method
