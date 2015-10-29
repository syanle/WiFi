.class public Lcom/umeng/socialize/view/wigets/PullToRefreshListView;
.super Landroid/widget/ListView;
.source "PullToRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/view/wigets/PullToRefreshListView$a;,
        Lcom/umeng/socialize/view/wigets/PullToRefreshListView$OnRefreshListener;
    }
.end annotation


# static fields
.field private static final PULL_TO_REFRESH:I = 0x2

.field private static final REFRESHING:I = 0x4

.field private static final RELEASE_TO_REFRESH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Other"

.field private static final TAP_TO_REFRESH:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentScrollState:I

.field private mFlipAnimation:Landroid/view/animation/RotateAnimation;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLastMotionY:I

.field private mOnRefreshListener:Lcom/umeng/socialize/view/wigets/PullToRefreshListView$OnRefreshListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mRefreshOriginalTopPadding:I

.field private mRefreshState:I

.field private mRefreshView:Landroid/widget/RelativeLayout;

.field private mRefreshViewHeight:I

.field private mRefreshViewImage:Landroid/widget/ImageView;

.field private mRefreshViewLastUpdated:Landroid/widget/TextView;

.field private mRefreshViewProgress:Landroid/widget/ProgressBar;

.field private mRefreshViewText:Landroid/widget/TextView;

.field private mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->init(Landroid/content/Context;)V

    .line 84
    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/view/wigets/PullToRefreshListView;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    return v0
.end method

.method private applyHeaderPadding(Landroid/view/MotionEvent;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 211
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    .line 217
    :try_start_0
    const-class v0, Landroid/view/MotionEvent;

    const-string v3, "getPointerCount"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 218
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    move v1, v0

    :goto_0
    move v4, v2

    .line 229
    :goto_1
    if-lt v4, v5, :cond_0

    .line 266
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    throw v0

    .line 223
    :catch_1
    move-exception v0

    .line 224
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "unexpected "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :catch_2
    move-exception v0

    .line 226
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "unexpected "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v3, v2

    .line 230
    :goto_2
    if-lt v3, v1, :cond_1

    .line 229
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 231
    :cond_1
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    const/4 v6, 0x3

    if-ne v0, v6, :cond_3

    .line 232
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->isVerticalFadingEdgeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 239
    :cond_2
    :try_start_1
    const-class v0, Landroid/view/MotionEvent;

    .line 240
    const-string v6, "getHistoricalY"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    .line 239
    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 241
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_6

    move-result v0

    .line 255
    :goto_3
    iget v6, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mLastMotionY:I

    sub-int/2addr v0, v6

    .line 256
    iget v6, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewHeight:I

    .line 255
    sub-int/2addr v0, v6

    int-to-double v6, v0

    .line 256
    const-wide v8, 0x3ffb333333333333L    # 1.7

    .line 255
    div-double/2addr v6, v8

    double-to-int v0, v6

    .line 258
    iget-object v6, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 259
    iget-object v7, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v7

    .line 261
    iget-object v8, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v8

    .line 262
    iget-object v9, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v9

    .line 258
    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 230
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 242
    :catch_3
    move-exception v0

    .line 244
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v0

    float-to-int v0, v0

    goto :goto_3

    .line 245
    :catch_4
    move-exception v0

    .line 246
    throw v0

    .line 247
    :catch_5
    move-exception v0

    .line 248
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v2

    goto :goto_3

    .line 249
    :catch_6
    move-exception v0

    .line 250
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v0, v2

    goto :goto_3

    .line 219
    :catch_7
    move-exception v0

    goto/16 :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x64

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 87
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mContext:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/view/animation/RotateAnimation;

    move v5, v3

    move v6, v4

    .line 91
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 89
    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v5}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 94
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 95
    new-instance v5, Landroid/view/animation/RotateAnimation;

    move v6, v2

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 97
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 95
    iput-object v5, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    .line 98
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 99
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 100
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 103
    const-string v0, "layout_inflater"

    .line 102
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    .line 105
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mInflater:Landroid/view/LayoutInflater;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "umeng_socialize_pull_to_refresh_header"

    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 107
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "pull_to_refresh_text"

    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 106
    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    .line 109
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "pull_to_refresh_image"

    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 108
    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "pull_to_refresh_progress"

    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 110
    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    .line 113
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v2, "pull_to_refresh_updated_at"

    invoke-static {p1, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    iput-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    .line 116
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/umeng/socialize/view/wigets/PullToRefreshListView$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView$a;-><init>(Lcom/umeng/socialize/view/wigets/PullToRefreshListView;Lcom/umeng/socialize/view/wigets/PullToRefreshListView$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshOriginalTopPadding:I

    .line 119
    iput v3, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    .line 121
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 123
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 125
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->measureView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewHeight:I

    .line 127
    return-void
.end method

.method private measureView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 301
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 302
    if-nez v0, :cond_0

    .line 303
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 304
    const/4 v1, -0x1

    .line 305
    const/4 v2, -0x2

    .line 303
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 309
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 308
    invoke-static {v3, v3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 310
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 312
    if-lez v0, :cond_1

    .line 313
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 317
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 318
    return-void

    .line 315
    :cond_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0
.end method

.method private resetHeader()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x1

    .line 283
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_0

    .line 284
    iput v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    .line 286
    invoke-direct {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->resetHeaderPadding()V

    .line 289
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "pull_to_refresh_tap_label"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 291
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_pulltorefresh_arrow"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 293
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 295
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 298
    :cond_0
    return-void
.end method

.method private resetHeaderPadding()V
    .locals 5

    .prologue
    .line 272
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    .line 273
    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    .line 274
    iget v2, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshOriginalTopPadding:I

    .line 275
    iget-object v3, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v3

    .line 276
    iget-object v4, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v4

    .line 272
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 277
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 132
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setSelection(I)V

    .line 133
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    .line 385
    const-string v0, "Other"

    const-string v1, "onRefresh"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mOnRefreshListener:Lcom/umeng/socialize/view/wigets/PullToRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mOnRefreshListener:Lcom/umeng/socialize/view/wigets/PullToRefreshListView$OnRefreshListener;

    invoke-interface {v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView$OnRefreshListener;->a()V

    .line 390
    :cond_0
    return-void
.end method

.method public onRefreshComplete()V
    .locals 2

    .prologue
    .line 405
    const-string v0, "Other"

    const-string v1, "onRefreshComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->resetHeader()V

    .line 411
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 412
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->invalidateViews()V

    .line 413
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setSelection(I)V

    .line 415
    :cond_0
    return-void
.end method

.method public onRefreshComplete(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setLastUpdated(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->onRefreshComplete()V

    .line 399
    return-void
.end method

.method public onRefreshCompleteKeepState()V
    .locals 2

    .prologue
    .line 417
    const-string v0, "Other"

    const-string v1, "onRefreshCompleteKeepState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-direct {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->resetHeader()V

    .line 421
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    if-lez v0, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->invalidateViews()V

    .line 424
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    .prologue
    const/4 v1, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 325
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v4, :cond_6

    .line 326
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_6

    .line 327
    if-nez p2, :cond_5

    .line 328
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewHeight:I

    add-int/lit8 v1, v1, 0x14

    if-gt v0, v1, :cond_0

    .line 330
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    if-ltz v0, :cond_3

    .line 331
    :cond_0
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v6, :cond_3

    .line 332
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "pull_to_refresh_release_label"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 333
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 334
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 335
    iput v6, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    .line 355
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 359
    :cond_2
    return-void

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewHeight:I

    add-int/lit8 v1, v1, 0x14

    if-ge v0, v1, :cond_1

    .line 337
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v5, :cond_1

    .line 338
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "pull_to_refresh_pull_label"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 339
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v4, :cond_4

    .line 340
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 341
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mReverseFlipAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 343
    :cond_4
    iput v5, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    goto :goto_0

    .line 346
    :cond_5
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 347
    invoke-direct {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->resetHeader()V

    goto :goto_0

    .line 349
    :cond_6
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mCurrentScrollState:I

    if-ne v0, v5, :cond_1

    .line 350
    if-nez p2, :cond_1

    .line 351
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v1, :cond_1

    .line 352
    invoke-virtual {p0, v4}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setSelection(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 363
    iput p2, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mCurrentScrollState:I

    .line 365
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 368
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 207
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 181
    :pswitch_0
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 182
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setVerticalScrollBarEnabled(Z)V

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    if-eq v0, v3, :cond_0

    .line 185
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewHeight:I

    if-gt v0, v1, :cond_2

    .line 186
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    if-ltz v0, :cond_3

    .line 187
    :cond_2
    iget v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 189
    iput v3, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    .line 190
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->prepareForRefresh()V

    .line 191
    invoke-virtual {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->onRefresh()V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result v0

    iget v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewHeight:I

    if-lt v0, v1, :cond_4

    .line 193
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v0

    if-gez v0, :cond_0

    .line 195
    :cond_4
    invoke-direct {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->resetHeader()V

    .line 196
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setSelection(I)V

    goto :goto_0

    .line 201
    :pswitch_1
    iput v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mLastMotionY:I

    goto :goto_0

    .line 204
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->applyHeaderPadding(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public prepareForRefresh()V
    .locals 4

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->resetHeaderPadding()V

    .line 373
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 376
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 379
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "pull_to_refresh_refreshing_label"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 381
    const/4 v0, 0x4

    iput v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshState:I

    .line 382
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->setSelection(I)V

    .line 140
    return-void
.end method

.method public setLastUpdated(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mRefreshViewLastUpdated:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnRefreshListener(Lcom/umeng/socialize/view/wigets/PullToRefreshListView$OnRefreshListener;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mOnRefreshListener:Lcom/umeng/socialize/view/wigets/PullToRefreshListView$OnRefreshListener;

    .line 160
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/umeng/socialize/view/wigets/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 151
    return-void
.end method
