.class public Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;
.super Landroid/widget/LinearLayout;
.source "PageInnerLoadingView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private mLoadingImage:Landroid/widget/ImageView;

.field private mLoadingText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    iput-object p1, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mContext:Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->initView()V

    .line 68
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 79
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/pubinfo/wifi_core/R$layout;->page_inner_loading:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    sget v1, Lcom/pubinfo/wifi_core/R$id;->iv_page_inner_loading:I

    invoke-virtual {p0, v1}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingImage:Landroid/widget/ImageView;

    .line 82
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3, v3}, Landroid/widget/ImageView;->measure(II)V

    .line 83
    sget v1, Lcom/pubinfo/wifi_core/R$id;->tv_page_inner_loading_text:I

    invoke-virtual {p0, v1}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingText:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 85
    iget-object v1, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 86
    return-void
.end method


# virtual methods
.method public dismissPageInnerLoading()V
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->stopLoadingAnimation()V

    .line 122
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->setVisibility(I)V

    .line 123
    return-void
.end method

.method public isAgainShowLoading()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    return-void
.end method

.method public showPageInnerLoading()V
    .locals 2

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pubinfo/wifi_core/R$string;->str_tv_loading_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->showPageInnerLoading(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public showPageInnerLoading(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-virtual {p0, v1}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->setVisibility(I)V

    .line 110
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->startLoadingAnimation()V

    .line 111
    return-void
.end method

.method public showPageInnerLoadingError()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pubinfo/wifi_core/R$string;->str_tv_get_data_err_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->showPageInnerLoadingNoDataOrError(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public showPageInnerLoadingNoDataOrError(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->setLoadingText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public showPageInnerLoadingNodata()V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/pubinfo/wifi_core/R$string;->str_tv_no_data_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->showPageInnerLoadingNoDataOrError(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public startLoadingAnimation()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 172
    return-void
.end method

.method public stopLoadingAnimation()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/pubinfo/wifi_core/core/view/PageInnerLoadingView;->mLoadingAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 183
    return-void
.end method
