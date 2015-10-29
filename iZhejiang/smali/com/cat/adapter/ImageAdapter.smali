.class public Lcom/cat/adapter/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# instance fields
.field private imageFetcher:Lcom/ta/util/bitmap/TABitmapCacheWork;

.field private final mContext:Landroid/content/Context;

.field private mNumColumns:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ta/TAApplication;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "application"    # Lcom/ta/TAApplication;

    .prologue
    const/high16 v3, 0x43000000    # 128.0f

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v2, 0x0

    iput v2, p0, Lcom/cat/adapter/ImageAdapter;->mNumColumns:I

    .line 31
    new-instance v0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;

    .line 32
    invoke-static {p1, v3}, Lcom/ta/util/extend/draw/DensityUtils;->dipTopx(Landroid/content/Context;F)I

    move-result v2

    .line 33
    invoke-static {p1, v3}, Lcom/ta/util/extend/draw/DensityUtils;->dipTopx(Landroid/content/Context;F)I

    move-result v3

    .line 31
    invoke-direct {v0, p1, v2, v3}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;-><init>(Landroid/content/Context;II)V

    .line 34
    .local v0, "downloadBitmapFetcher":Lcom/ta/util/bitmap/TADownloadBitmapHandler;
    new-instance v1, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;

    invoke-direct {v1}, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;-><init>()V

    .line 36
    .local v1, "taBitmapCallBackHanlder":Lcom/ta/util/bitmap/TABitmapCallBackHanlder;
    const v2, 0x7f02003c

    invoke-virtual {v1, p1, v2}, Lcom/ta/util/bitmap/TABitmapCallBackHanlder;->setLoadingImage(Landroid/content/Context;I)V

    .line 37
    new-instance v2, Lcom/ta/util/bitmap/TABitmapCacheWork;

    invoke-direct {v2, p1}, Lcom/ta/util/bitmap/TABitmapCacheWork;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/cat/adapter/ImageAdapter;->imageFetcher:Lcom/ta/util/bitmap/TABitmapCacheWork;

    .line 38
    iget-object v2, p0, Lcom/cat/adapter/ImageAdapter;->imageFetcher:Lcom/ta/util/bitmap/TABitmapCacheWork;

    invoke-virtual {v2, v0}, Lcom/ta/util/bitmap/TABitmapCacheWork;->setProcessDataHandler(Lcom/ta/util/cache/TAProcessDataHandler;)V

    .line 39
    iget-object v2, p0, Lcom/cat/adapter/ImageAdapter;->imageFetcher:Lcom/ta/util/bitmap/TABitmapCacheWork;

    invoke-virtual {v2, v1}, Lcom/ta/util/bitmap/TABitmapCacheWork;->setCallBackHandler(Lcom/ta/util/cache/TACallBackHandler;)V

    .line 40
    iget-object v2, p0, Lcom/cat/adapter/ImageAdapter;->imageFetcher:Lcom/ta/util/bitmap/TABitmapCacheWork;

    invoke-virtual {p2}, Lcom/ta/TAApplication;->getFileCache()Lcom/ta/util/cache/TAFileCache;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ta/util/bitmap/TABitmapCacheWork;->setFileCache(Lcom/ta/util/cache/TAFileCache;)V

    .line 41
    iput-object p1, p0, Lcom/cat/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/cat/data/ImagesUrls;->imageThumbUrls:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/cat/adapter/ImageAdapter;->mNumColumns:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 54
    iget v0, p0, Lcom/cat/adapter/ImageAdapter;->mNumColumns:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lcom/cat/data/ImagesUrls;->imageThumbUrls:[Ljava/lang/String;

    iget v1, p0, Lcom/cat/adapter/ImageAdapter;->mNumColumns:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    iget v0, p0, Lcom/cat/adapter/ImageAdapter;->mNumColumns:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    iget v0, p0, Lcom/cat/adapter/ImageAdapter;->mNumColumns:I

    sub-int v0, p1, v0

    goto :goto_0
.end method

.method public getNumColumns()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/cat/adapter/ImageAdapter;->mNumColumns:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v2, 0x64

    .line 69
    if-nez p2, :cond_0

    .line 71
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/cat/adapter/ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "imageView":Landroid/widget/ImageView;
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 79
    :goto_0
    iget-object v1, p0, Lcom/cat/adapter/ImageAdapter;->imageFetcher:Lcom/ta/util/bitmap/TABitmapCacheWork;

    sget-object v2, Lcom/cat/data/ImagesUrls;->imageThumbUrls:[Ljava/lang/String;

    .line 80
    iget v3, p0, Lcom/cat/adapter/ImageAdapter;->mNumColumns:I

    sub-int v3, p1, v3

    aget-object v2, v2, v3

    .line 79
    invoke-virtual {v1, v2, v0}, Lcom/ta/util/bitmap/TABitmapCacheWork;->loadFormCache(Ljava/lang/Object;Landroid/widget/ImageView;)V

    .line 81
    return-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    .line 77
    check-cast v0, Landroid/widget/ImageView;

    .restart local v0    # "imageView":Landroid/widget/ImageView;
    goto :goto_0
.end method

.method public setNumColumns(I)V
    .locals 0
    .param p1, "numColumns"    # I

    .prologue
    .line 86
    iput p1, p0, Lcom/cat/adapter/ImageAdapter;->mNumColumns:I

    .line 87
    return-void
.end method
