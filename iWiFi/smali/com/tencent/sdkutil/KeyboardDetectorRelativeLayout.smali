.class public Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "ProGuard"


# instance fields
.field private mKeyboardListener:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;

.field private rect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 16
    iput-object v0, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->rect:Landroid/graphics/Rect;

    .line 29
    iput-object v0, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->mKeyboardListener:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;

    .line 34
    iget-object v0, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->rect:Landroid/graphics/Rect;

    .line 37
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->rect:Landroid/graphics/Rect;

    .line 29
    iput-object v0, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->mKeyboardListener:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;

    .line 42
    iget-object v0, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->rect:Landroid/graphics/Rect;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public addKeyboardStateChangedListener(Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->mKeyboardListener:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;

    .line 49
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    .prologue
    .line 55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 57
    invoke-virtual {p0}, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 61
    iget-object v2, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 66
    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 70
    iget-object v2, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->mKeyboardListener:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 72
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 74
    iget-object v0, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->mKeyboardListener:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;

    iget-object v1, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;->onKeyboardShown(I)V

    .line 95
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 96
    return-void

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout;->mKeyboardListener:Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;

    invoke-interface {v0}, Lcom/tencent/sdkutil/KeyboardDetectorRelativeLayout$IKeyboardChanged;->onKeyboardHidden()V

    goto :goto_0
.end method
