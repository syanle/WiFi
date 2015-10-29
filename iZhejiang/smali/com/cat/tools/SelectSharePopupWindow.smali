.class public Lcom/cat/tools/SelectSharePopupWindow;
.super Landroid/widget/PopupWindow;
.source "SelectSharePopupWindow.java"


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_coment:Landroid/widget/Button;

.field private btn_share:Landroid/widget/Button;

.field private btn_zan:Landroid/widget/Button;

.field private mMenuView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "itemsOnClick"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    check-cast v1, Landroid/view/LayoutInflater;

    .line 27
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->mMenuView:Landroid/view/View;

    .line 28
    iget-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->mMenuView:Landroid/view/View;

    const v3, 0x7f0a001f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->btn_zan:Landroid/widget/Button;

    .line 29
    iget-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->mMenuView:Landroid/view/View;

    const v3, 0x7f0a0020

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->btn_coment:Landroid/widget/Button;

    .line 30
    iget-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->mMenuView:Landroid/view/View;

    const v3, 0x7f0a0021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->btn_share:Landroid/widget/Button;

    .line 32
    iget-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->mMenuView:Landroid/view/View;

    const v3, 0x7f0a001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->btn_cancel:Landroid/widget/Button;

    .line 34
    iget-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->btn_cancel:Landroid/widget/Button;

    new-instance v3, Lcom/cat/tools/SelectSharePopupWindow$1;

    invoke-direct {v3, p0}, Lcom/cat/tools/SelectSharePopupWindow$1;-><init>(Lcom/cat/tools/SelectSharePopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->btn_zan:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->btn_coment:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->btn_share:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->mMenuView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/cat/tools/SelectSharePopupWindow;->setContentView(Landroid/view/View;)V

    .line 48
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/cat/tools/SelectSharePopupWindow;->setWidth(I)V

    .line 50
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/cat/tools/SelectSharePopupWindow;->setHeight(I)V

    .line 52
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cat/tools/SelectSharePopupWindow;->setFocusable(Z)V

    .line 54
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/cat/tools/SelectSharePopupWindow;->setAnimationStyle(I)V

    .line 56
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x50000000

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 58
    .local v0, "dw":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v0}, Lcom/cat/tools/SelectSharePopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v2, p0, Lcom/cat/tools/SelectSharePopupWindow;->mMenuView:Landroid/view/View;

    new-instance v3, Lcom/cat/tools/SelectSharePopupWindow$2;

    invoke-direct {v3, p0}, Lcom/cat/tools/SelectSharePopupWindow$2;-><init>(Lcom/cat/tools/SelectSharePopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/cat/tools/SelectSharePopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cat/tools/SelectSharePopupWindow;->mMenuView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .prologue
    .line 80
    return-void
.end method
