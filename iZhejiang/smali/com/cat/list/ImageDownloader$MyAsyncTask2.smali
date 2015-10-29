.class Lcom/cat/list/ImageDownloader$MyAsyncTask2;
.super Landroid/os/AsyncTask;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cat/list/ImageDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsyncTask2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private download:Lcom/cat/list/OnImageDownload;

.field private mActivity:Landroid/content/Context;

.field private mImageView:Landroid/widget/ImageView;

.field private path:Ljava/lang/String;

.field final synthetic this$0:Lcom/cat/list/ImageDownloader;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/cat/list/ImageDownloader;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Lcom/cat/list/OnImageDownload;)V
    .locals 0
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "mImageView"    # Landroid/widget/ImageView;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "mActivity"    # Landroid/content/Context;
    .param p6, "download"    # Lcom/cat/list/OnImageDownload;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->this$0:Lcom/cat/list/ImageDownloader;

    .line 515
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 517
    iput-object p3, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->mImageView:Landroid/widget/ImageView;

    .line 518
    iput-object p2, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->url:Ljava/lang/String;

    .line 519
    iput-object p4, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->path:Ljava/lang/String;

    .line 520
    iput-object p5, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->mActivity:Landroid/content/Context;

    .line 521
    iput-object p6, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->download:Lcom/cat/list/OnImageDownload;

    .line 522
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 11
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 526
    const/4 v2, 0x0

    .line 527
    .local v2, "data":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->url:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 529
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v5, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->url:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 530
    .local v1, "c_url":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 531
    .local v0, "bitmap_data":Ljava/io/InputStream;
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 532
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v5

    iget-object v6, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/cat/list/Util;->getImageName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 533
    .local v4, "imageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->this$0:Lcom/cat/list/ImageDownloader;

    iget-object v6, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->path:Ljava/lang/String;

    iget-object v7, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->mActivity:Landroid/content/Context;

    # invokes: Lcom/cat/list/ImageDownloader;->setBitmapToFile2(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    invoke-static {v5, v6, v7, v4, v2}, Lcom/cat/list/ImageDownloader;->access$4(Lcom/cat/list/ImageDownloader;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 534
    iget-object v5, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->this$0:Lcom/cat/list/ImageDownloader;

    iget-object v6, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->path:Ljava/lang/String;

    iget-object v7, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->mActivity:Landroid/content/Context;

    # invokes: Lcom/cat/list/ImageDownloader;->removeBitmapFromFile2(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v5, v6, v7, v4}, Lcom/cat/list/ImageDownloader;->access$5(Lcom/cat/list/ImageDownloader;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 536
    :cond_0
    iget-object v5, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->this$0:Lcom/cat/list/ImageDownloader;

    # getter for: Lcom/cat/list/ImageDownloader;->imageCaches2:Ljava/util/Map;
    invoke-static {v5}, Lcom/cat/list/ImageDownloader;->access$6(Lcom/cat/list/ImageDownloader;)Ljava/util/Map;

    move-result-object v5

    .line 537
    iget-object v6, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->url:Ljava/lang/String;

    .line 538
    new-instance v7, Ljava/lang/ref/SoftReference;

    .line 539
    const/16 v8, 0x64

    const/16 v9, 0x64

    const/4 v10, 0x1

    .line 538
    invoke-static {v2, v8, v9, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 536
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    .end local v0    # "bitmap_data":Ljava/io/InputStream;
    .end local v1    # "c_url":Ljava/net/URL;
    .end local v4    # "imageName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v2

    .line 540
    :catch_0
    move-exception v3

    .line 541
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 555
    iget-object v0, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->download:Lcom/cat/list/OnImageDownload;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->download:Lcom/cat/list/OnImageDownload;

    iget-object v1, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->mImageView:Landroid/widget/ImageView;

    invoke-interface {v0, p1, v1, v2}, Lcom/cat/list/OnImageDownload;->onDownloadSucc2(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 558
    iget-object v0, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->this$0:Lcom/cat/list/ImageDownloader;

    iget-object v1, p0, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->url:Ljava/lang/String;

    # invokes: Lcom/cat/list/ImageDownloader;->removeTaskFormMap2(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/cat/list/ImageDownloader;->access$7(Lcom/cat/list/ImageDownloader;Ljava/lang/String;)V

    .line 560
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 561
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 549
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 550
    return-void
.end method
