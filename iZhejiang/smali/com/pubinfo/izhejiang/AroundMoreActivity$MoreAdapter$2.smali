.class Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$2;
.super Ljava/lang/Object;
.source "AroundMoreActivity.java"

# interfaces
.implements Lcom/cat/list/OnImageDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;


# direct methods
.method constructor <init>(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$2;->this$1:Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadSucc(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "c_url"    # Ljava/lang/String;
    .param p3, "mimageView"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 415
    return-void
.end method

.method public onDownloadSucc2(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "c_url"    # Ljava/lang/String;
    .param p3, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    .line 420
    iget-object v2, p0, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter$2;->this$1:Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;

    # getter for: Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->this$0:Lcom/pubinfo/izhejiang/AroundMoreActivity;
    invoke-static {v2}, Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;->access$1(Lcom/pubinfo/izhejiang/AroundMoreActivity$MoreAdapter;)Lcom/pubinfo/izhejiang/AroundMoreActivity;

    move-result-object v2

    iget-object v2, v2, Lcom/pubinfo/izhejiang/AroundMoreActivity;->listView:Landroid/widget/ListView;

    .line 421
    invoke-virtual {v2, p2}, Landroid/widget/ListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    .line 420
    check-cast v1, Landroid/widget/ImageView;

    .line 422
    .local v1, "iv":Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 423
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 425
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 426
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 430
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method
