.class public Lcom/umeng/socialize/view/a;
.super Landroid/widget/LinearLayout;
.source "ActionBarLoadingView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected a(IF)I
    .locals 1

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    int-to-float v0, p1

    mul-float/2addr v0, p2

    float-to-int p1, v0

    .line 71
    :cond_0
    return p1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 10

    .prologue
    const/16 v9, 0x13

    const/4 v8, -0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 29
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    const/4 v1, 0x4

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v1, v2}, Lcom/umeng/socialize/view/a;->a(IF)I

    move-result v1

    .line 34
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v3, 0x30

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {p0, v3, v0}, Lcom/umeng/socialize/view/a;->a(IF)I

    move-result v0

    invoke-direct {v2, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/view/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    invoke-virtual {p0, v6}, Lcom/umeng/socialize/view/a;->setOrientation(I)V

    .line 39
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/a;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x1010079

    invoke-direct {v0, v3, v4, v5}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ProgressBar;->setPadding(IIII)V

    .line 42
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/umeng/socialize/view/a;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 43
    const v4, -0x777778

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    const/4 v4, 0x1

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    const-string v4, "Loading..."

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    const/16 v4, 0x11

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 50
    const/4 v4, 0x0

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 54
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 55
    invoke-virtual {v4, v6, v6, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/umeng/socialize/view/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/a;->addView(Landroid/view/View;)V

    .line 63
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/view/a;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method
