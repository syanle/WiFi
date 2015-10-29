.class public Lcom/umeng/socialize/view/aj;
.super Landroid/widget/PopupWindow;
.source "LoadingWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 24
    .line 25
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 26
    const-string v1, "umeng_socialize_full_curtain"

    .line 25
    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 25
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 27
    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 28
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    const/16 v0, 0x50

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/umeng/socialize/view/aj;->showAtLocation(Landroid/view/View;III)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/aj;->setFocusable(Z)V

    .line 33
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/view/aj;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    return-void
.end method
