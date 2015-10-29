.class public Lcom/cat/tools/PersonInfomationPopupWindow;
.super Landroid/widget/PopupWindow;
.source "PersonInfomationPopupWindow.java"


# instance fields
.field private btn_cancel:Landroid/widget/Button;

.field private btn_ok:Landroid/widget/Button;

.field private et1:Landroid/widget/EditText;

.field private mMenuView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
    .locals 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "itemsOnClick"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v4, -0x1

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 28
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 27
    check-cast v1, Landroid/view/LayoutInflater;

    .line 29
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->mMenuView:Landroid/view/View;

    .line 31
    iget-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->mMenuView:Landroid/view/View;

    const v3, 0x7f0a00ae

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->et1:Landroid/widget/EditText;

    .line 32
    iget-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->mMenuView:Landroid/view/View;

    const v3, 0x7f0a00ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->btn_ok:Landroid/widget/Button;

    .line 33
    iget-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->mMenuView:Landroid/view/View;

    const v3, 0x7f0a001e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->btn_cancel:Landroid/widget/Button;

    .line 35
    iget-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->btn_cancel:Landroid/widget/Button;

    new-instance v3, Lcom/cat/tools/PersonInfomationPopupWindow$1;

    invoke-direct {v3, p0}, Lcom/cat/tools/PersonInfomationPopupWindow$1;-><init>(Lcom/cat/tools/PersonInfomationPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->btn_ok:Landroid/widget/Button;

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    iget-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->mMenuView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/cat/tools/PersonInfomationPopupWindow;->setContentView(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0, v4}, Lcom/cat/tools/PersonInfomationPopupWindow;->setWidth(I)V

    .line 50
    invoke-virtual {p0, v4}, Lcom/cat/tools/PersonInfomationPopupWindow;->setHeight(I)V

    .line 52
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/cat/tools/PersonInfomationPopupWindow;->setFocusable(Z)V

    .line 54
    const v2, 0x7f070006

    invoke-virtual {p0, v2}, Lcom/cat/tools/PersonInfomationPopupWindow;->setAnimationStyle(I)V

    .line 56
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x50000000

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 58
    .local v0, "dw":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {p0, v0}, Lcom/cat/tools/PersonInfomationPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v2, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->mMenuView:Landroid/view/View;

    new-instance v3, Lcom/cat/tools/PersonInfomationPopupWindow$2;

    invoke-direct {v3, p0}, Lcom/cat/tools/PersonInfomationPopupWindow$2;-><init>(Lcom/cat/tools/PersonInfomationPopupWindow;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 76
    return-void
.end method

.method static synthetic access$0(Lcom/cat/tools/PersonInfomationPopupWindow;)Landroid/view/View;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->mMenuView:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public getEditText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/cat/tools/PersonInfomationPopupWindow;->et1:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
