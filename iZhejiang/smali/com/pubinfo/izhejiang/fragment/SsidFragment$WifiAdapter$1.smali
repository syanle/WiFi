.class Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$1;
.super Ljava/lang/Object;
.source "SsidFragment.java"

# interfaces
.implements Lcom/cat/list/OnImageDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$1;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    .line 732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadSucc(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "c_url"    # Ljava/lang/String;
    .param p3, "mimageView"    # Landroid/widget/RelativeLayout;

    .prologue
    const/4 v3, 0x0

    .line 736
    iget-object v2, p0, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter$1;->this$1:Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->this$0:Lcom/pubinfo/izhejiang/fragment/SsidFragment;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;->access$3(Lcom/pubinfo/izhejiang/fragment/SsidFragment$WifiAdapter;)Lcom/pubinfo/izhejiang/fragment/SsidFragment;

    move-result-object v2

    # getter for: Lcom/pubinfo/izhejiang/fragment/SsidFragment;->wifiLView:Lcom/cat/list/XListView;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/fragment/SsidFragment;->access$2(Lcom/pubinfo/izhejiang/fragment/SsidFragment;)Lcom/cat/list/XListView;

    move-result-object v2

    .line 737
    invoke-virtual {v2, p2}, Lcom/cat/list/XListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 736
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 738
    .local v1, "imageView":Landroid/widget/RelativeLayout;
    if-eqz v1, :cond_0

    .line 739
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 741
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 743
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 745
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 747
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method public onDownloadSucc2(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "c_url"    # Ljava/lang/String;
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    .line 754
    return-void
.end method
