.class public Lcom/ta/util/bitmap/TABitmapCallBackHanlder;
.super Lcom/ta/util/cache/TACallBackHandler;
.source "TABitmapCallBackHanlder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ta/util/cache/TACallBackHandler",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private mLoadingBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ta/util/cache/TACallBackHandler;-><init>()V

    return-void
.end method

.method private setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 98
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onFailure(Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 0
    .param p1, "t"    # Landroid/widget/ImageView;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/ta/util/cache/TACallBackHandler;->onFailure(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    return-void
.end method

.method public bridge synthetic onFailure(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->onFailure(Landroid/widget/ImageView;Ljava/lang/Object;)V

    return-void
.end method

.method public onStart(Landroid/widget/ImageView;Ljava/lang/Object;)V
    .locals 1
    .param p1, "t"    # Landroid/widget/ImageView;
    .param p2, "data"    # Ljava/lang/Object;

    .prologue
    .line 33
    invoke-super {p0, p1, p2}, Lcom/ta/util/cache/TACallBackHandler;->onStart(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->onSuccess(Landroid/widget/ImageView;Ljava/lang/Object;[B)V

    .line 35
    return-void
.end method

.method public bridge synthetic onStart(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2}, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->onStart(Landroid/widget/ImageView;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Landroid/widget/ImageView;Ljava/lang/Object;[B)V
    .locals 4
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "buffer"    # [B

    .prologue
    .line 41
    invoke-super {p0, p1, p2, p3}, Lcom/ta/util/cache/TACallBackHandler;->onSuccess(Ljava/lang/Object;Ljava/lang/Object;[B)V

    .line 42
    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    .line 44
    const/4 v0, 0x0

    .line 47
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    .line 49
    const/4 v2, 0x0

    .line 50
    :try_start_0
    array-length v3, p3

    .line 49
    invoke-static {p3, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 53
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 60
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->mLoadingBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, p0, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2}, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->setImageBitmap(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;Ljava/lang/Object;[B)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->onSuccess(Landroid/widget/ImageView;Ljava/lang/Object;[B)V

    return-void
.end method

.method public setLoadingImage(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .prologue
    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 88
    return-void
.end method

.method public setLoadingImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 82
    return-void
.end method
