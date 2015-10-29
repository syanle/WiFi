.class public Lcom/cat/tools/SelectFindPasswordPopupWindow;
.super Landroid/widget/PopupWindow;
.source "SelectFindPasswordPopupWindow.java"


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_email:Landroid/widget/Button;

.field private btn_message:Landroid/widget/Button;

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
    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->mMenuView:Landroid/view/View;

    .line 28
    iget-object v2, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->mMenuView:Landroid/view/View;

    const v3, 0x7f0a001c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->btn_message:Landroid/widget/Button;

    .line 30
    iget-object v2, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->mMenuView:Landroid/view/View;

    const v3, 0x7f0a001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->btn_cancel:Landroid/widget/Button;

    .line 32
    iget-object v2, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->btn_cancel:Landroid/widget/Button;

    new-instance v3, Lcom/cat/tools/SelectFindPasswordPopupWindow$1;

    invoke-direct {v3, p0}, Lcom/cat/tools/SelectFindPasswordPopupWindow$1;-><init>(Lcom/cat/tools/SelectFindPasswordPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    iget-object v2, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->btn_message:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v2, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->mMenuView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/cat/tools/SelectFindPasswordPopupWindow;->setContentView(Landroid/view/View;)V

    .line 45
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/cat/tools/SelectFindPasswordPopupWindow;->setWidth(I)V

    .line 47
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Lcom/cat/tools/SelectFindPasswordPopupWindow;->setHeight(I)V

    .line 49
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cat/tools/SelectFindPasswordPopupWindow;->setFocusable(Z)V

    .line 51
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/cat/tools/SelectFindPasswordPopupWindow;->setAnimationStyle(I)V

    .line 53
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x50000000

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 55
    .local v0, "dw":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v0}, Lcom/cat/tools/SelectFindPasswordPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 57
    iget-object v2, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->mMenuView:Landroid/view/View;

    new-instance v3, Lcom/cat/tools/SelectFindPasswordPopupWindow$2;

    invoke-direct {v3, p0}, Lcom/cat/tools/SelectFindPasswordPopupWindow$2;-><init>(Lcom/cat/tools/SelectFindPasswordPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    return-void
.end method

.method static synthetic access$0(Lcom/cat/tools/SelectFindPasswordPopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->mMenuView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "text1"    # Ljava/lang/String;
    .param p2, "text2"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->btn_message:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/cat/tools/SelectFindPasswordPopupWindow;->btn_email:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method
