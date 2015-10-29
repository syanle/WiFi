.class public Lcom/cat/picture/ClipImageLayout;
.super Landroid/widget/RelativeLayout;
.source "ClipImageLayout.java"


# static fields
.field private static mZoomImageView:Lcom/cat/picture/ClipZoomImageView;


# instance fields
.field private mClipImageView:Lcom/cat/picture/ClipImageBorderView;

.field private mHorizontalPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, -0x1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/16 v1, 0x14

    iput v1, p0, Lcom/cat/picture/ClipImageLayout;->mHorizontalPadding:I

    .line 30
    new-instance v1, Lcom/cat/picture/ClipZoomImageView;

    invoke-direct {v1, p1}, Lcom/cat/picture/ClipZoomImageView;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/cat/picture/ClipImageLayout;->mZoomImageView:Lcom/cat/picture/ClipZoomImageView;

    .line 31
    new-instance v1, Lcom/cat/picture/ClipImageBorderView;

    invoke-direct {v1, p1}, Lcom/cat/picture/ClipImageBorderView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/cat/picture/ClipImageLayout;->mClipImageView:Lcom/cat/picture/ClipImageBorderView;

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    sget-object v1, Lcom/cat/picture/ClipImageLayout;->mZoomImageView:Lcom/cat/picture/ClipZoomImageView;

    invoke-virtual {p0, v1, v0}, Lcom/cat/picture/ClipImageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v1, p0, Lcom/cat/picture/ClipImageLayout;->mClipImageView:Lcom/cat/picture/ClipImageBorderView;

    invoke-virtual {p0, v1, v0}, Lcom/cat/picture/ClipImageLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    const/4 v1, 0x1

    iget v2, p0, Lcom/cat/picture/ClipImageLayout;->mHorizontalPadding:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/cat/picture/ClipImageLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 48
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 46
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/cat/picture/ClipImageLayout;->mHorizontalPadding:I

    .line 49
    sget-object v1, Lcom/cat/picture/ClipImageLayout;->mZoomImageView:Lcom/cat/picture/ClipZoomImageView;

    iget v2, p0, Lcom/cat/picture/ClipImageLayout;->mHorizontalPadding:I

    invoke-virtual {v1, v2}, Lcom/cat/picture/ClipZoomImageView;->setHorizontalPadding(I)V

    .line 50
    iget-object v1, p0, Lcom/cat/picture/ClipImageLayout;->mClipImageView:Lcom/cat/picture/ClipImageBorderView;

    iget v2, p0, Lcom/cat/picture/ClipImageLayout;->mHorizontalPadding:I

    invoke-virtual {v1, v2}, Lcom/cat/picture/ClipImageBorderView;->setHorizontalPadding(I)V

    .line 51
    return-void
.end method


# virtual methods
.method public clip()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/cat/picture/ClipImageLayout;->mZoomImageView:Lcom/cat/picture/ClipZoomImageView;

    invoke-virtual {v0}, Lcom/cat/picture/ClipZoomImageView;->clip()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 54
    sget-object v0, Lcom/cat/picture/ClipImageLayout;->mZoomImageView:Lcom/cat/picture/ClipZoomImageView;

    invoke-virtual {v0, p1}, Lcom/cat/picture/ClipZoomImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 55
    return-void
.end method

.method public setHorizontalPadding(I)V
    .locals 0
    .param p1, "mHorizontalPadding"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/cat/picture/ClipImageLayout;->mHorizontalPadding:I

    .line 64
    return-void
.end method
