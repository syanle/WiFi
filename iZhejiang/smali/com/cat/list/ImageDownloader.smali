.class public Lcom/cat/list/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cat/list/ImageDownloader$MyAsyncTask;,
        Lcom/cat/list/ImageDownloader$MyAsyncTask2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageDownloader"


# instance fields
.field private imageCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private imageCaches2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cat/list/ImageDownloader$MyAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private map2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/cat/list/ImageDownloader$MyAsyncTask2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cat/list/ImageDownloader;->map:Ljava/util/HashMap;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cat/list/ImageDownloader;->map2:Ljava/util/HashMap;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cat/list/ImageDownloader;->imageCaches:Ljava/util/Map;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cat/list/ImageDownloader;->imageCaches2:Ljava/util/Map;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/cat/list/ImageDownloader;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cat/list/ImageDownloader;->setBitmapToFile(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lcom/cat/list/ImageDownloader;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2, p3}, Lcom/cat/list/ImageDownloader;->removeBitmapFromFile(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2(Lcom/cat/list/ImageDownloader;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cat/list/ImageDownloader;->imageCaches:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/cat/list/ImageDownloader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0, p1}, Lcom/cat/list/ImageDownloader;->removeTaskFormMap(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4(Lcom/cat/list/ImageDownloader;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    .prologue
    .line 349
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cat/list/ImageDownloader;->setBitmapToFile2(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/cat/list/ImageDownloader;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 423
    invoke-direct {p0, p1, p2, p3}, Lcom/cat/list/ImageDownloader;->removeBitmapFromFile2(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/cat/list/ImageDownloader;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/cat/list/ImageDownloader;->imageCaches2:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$7(Lcom/cat/list/ImageDownloader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/cat/list/ImageDownloader;->removeTaskFormMap2(Ljava/lang/String;)V

    return-void
.end method

.method private getBitmapFromFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "mActivity"    # Landroid/app/Activity;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, "file":Ljava/io/File;
    const-string v4, ""

    .line 243
    .local v4, "real_path":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cat/list/Util;->hasSDCard()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 244
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cat/list/Util;->getExtPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    if-eqz p3, :cond_1

    const-string v6, "/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .end local p3    # "path":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 244
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 252
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 254
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 261
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "real_path":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v0

    .line 246
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "real_path":Ljava/lang/String;
    .restart local p3    # "path":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 248
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/cat/list/Util;->getPackagePath(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 249
    if-eqz p3, :cond_3

    const-string v6, "/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .end local p3    # "path":Ljava/lang/String;
    :goto_3
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 248
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 250
    .restart local p3    # "path":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p3

    goto :goto_3

    .line 256
    .end local p3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 258
    const/4 v0, 0x0

    goto :goto_2

    .line 256
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_4
.end method

.method private getBitmapFromFile2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "mActivity"    # Landroid/content/Context;
    .param p2, "imageName"    # Ljava/lang/String;
    .param p3, "path"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_0

    .line 268
    const/4 v2, 0x0

    .line 269
    .local v2, "file":Ljava/io/File;
    const-string v4, ""

    .line 271
    .local v4, "real_path":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cat/list/Util;->hasSDCard()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cat/list/Util;->getExtPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 273
    if-eqz p3, :cond_1

    const-string v6, "/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .end local p3    # "path":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 272
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 280
    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v2    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 282
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 289
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "real_path":Ljava/lang/String;
    :cond_0
    :goto_2
    return-object v0

    .line 274
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "real_path":Ljava/lang/String;
    .restart local p3    # "path":Ljava/lang/String;
    :cond_1
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    .line 276
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/cat/list/Util;->getPackagePath2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 277
    if-eqz p3, :cond_3

    const-string v6, "/"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .end local p3    # "path":Ljava/lang/String;
    :goto_3
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 276
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 278
    .restart local p3    # "path":Ljava/lang/String;
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p3

    goto :goto_3

    .line 284
    .end local p3    # "path":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 285
    .local v1, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 286
    const/4 v0, 0x0

    goto :goto_2

    .line 284
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .restart local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    goto :goto_4
.end method

.method private isTasksContains(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "b":Z
    iget-object v1, p0, Lcom/cat/list/ImageDownloader;->map:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cat/list/ImageDownloader;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    const/4 v0, 0x1

    .line 185
    :cond_0
    return v0
.end method

.method private isTasksContains2(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "b":Z
    iget-object v1, p0, Lcom/cat/list/ImageDownloader;->map2:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/cat/list/ImageDownloader;->map2:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v0, 0x1

    .line 199
    :cond_0
    return v0
.end method

.method private needCreateNewTask(Landroid/view/View;)Z
    .locals 3
    .param p1, "mImageView"    # Landroid/view/View;

    .prologue
    .line 146
    const/4 v0, 0x1

    .line 147
    .local v0, "b":Z
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 149
    .local v1, "curr_task_url":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/cat/list/ImageDownloader;->isTasksContains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 153
    .end local v1    # "curr_task_url":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private needCreateNewTask2(Landroid/view/View;)Z
    .locals 3
    .param p1, "mImageView"    # Landroid/view/View;

    .prologue
    .line 164
    const/4 v0, 0x1

    .line 165
    .local v0, "b":Z
    if-eqz p1, :cond_0

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 167
    .local v1, "curr_task_url":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/cat/list/ImageDownloader;->isTasksContains2(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    const/4 v0, 0x0

    .line 171
    .end local v1    # "curr_task_url":Ljava/lang/String;
    :cond_0
    return v0
.end method

.method private removeBitmapFromFile(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mActivity"    # Landroid/app/Activity;
    .param p3, "imageName"    # Ljava/lang/String;

    .prologue
    .line 403
    const/4 v1, 0x0

    .line 404
    .local v1, "file":Ljava/io/File;
    const-string v3, ""

    .line 406
    .local v3, "real_path":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cat/list/Util;->hasSDCard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cat/list/Util;->getExtPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 408
    if-eqz p1, :cond_0

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 407
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 415
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    .line 417
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 421
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :goto_2
    return-void

    .line 408
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 411
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/cat/list/Util;->getPackagePath(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 412
    if-eqz p1, :cond_2

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .end local p1    # "path":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 411
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 412
    .restart local p1    # "path":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p1

    goto :goto_3

    .line 418
    .end local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_4

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2
.end method

.method private removeBitmapFromFile2(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mActivity"    # Landroid/content/Context;
    .param p3, "imageName"    # Ljava/lang/String;

    .prologue
    .line 425
    const/4 v1, 0x0

    .line 426
    .local v1, "file":Ljava/io/File;
    const-string v3, ""

    .line 428
    .local v3, "real_path":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v4

    invoke-virtual {v4}, Lcom/cat/list/Util;->hasSDCard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cat/list/Util;->getExtPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    if-eqz p1, :cond_0

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 429
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_3

    .line 439
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 443
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :goto_2
    return-void

    .line 430
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 433
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/cat/list/Util;->getPackagePath2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 434
    if-eqz p1, :cond_2

    const-string v5, "/"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .end local p1    # "path":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 433
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 434
    .restart local p1    # "path":Ljava/lang/String;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object p1

    goto :goto_3

    .line 440
    .end local p1    # "path":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 441
    .local v0, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 440
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_4

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_3
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2
.end method

.method private removeTaskFormMap(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 208
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cat/list/ImageDownloader;->map:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cat/list/ImageDownloader;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/cat/list/ImageDownloader;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524dmap\u7684\u5927\u5c0f=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cat/list/ImageDownloader;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method

.method private removeTaskFormMap2(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 220
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/cat/list/ImageDownloader;->map2:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cat/list/ImageDownloader;->map2:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/cat/list/ImageDownloader;->map2:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524dmap\u7684\u5927\u5c0f=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/cat/list/ImageDownloader;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method private setBitmapToFile(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mActivity"    # Landroid/app/Activity;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, "file":Ljava/io/File;
    const-string v5, ""

    .line 309
    .local v5, "real_path":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cat/list/Util;->hasSDCard()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cat/list/Util;->getExtPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    if-eqz p1, :cond_3

    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 310
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 318
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 319
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 320
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v3, "file2":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 323
    .end local v3    # "file2":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 324
    const/4 v4, 0x0

    .line 325
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cat/list/Util;->hasSDCard()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 326
    new-instance v4, Ljava/io/FileOutputStream;

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 331
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz p3, :cond_7

    .line 332
    const-string v7, ".png"

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 333
    const-string v7, ".PNG"

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 334
    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {p4, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 338
    :goto_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 339
    if-eqz v4, :cond_2

    .line 340
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 342
    :cond_2
    const/4 v6, 0x1

    move-object v1, v2

    .line 345
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    :goto_4
    return v6

    .line 311
    .restart local p1    # "path":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 314
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/cat/list/Util;->getPackagePath(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    if-eqz p1, :cond_5

    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .end local p1    # "path":Ljava/lang/String;
    :goto_5
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 314
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 315
    .restart local p1    # "path":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    goto :goto_5

    .line 328
    .end local v1    # "file":Ljava/io/File;
    .end local p1    # "path":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {p2, p3, v7}, Landroid/app/Activity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    goto :goto_2

    .line 336
    :cond_7
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {p4, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 343
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 344
    .end local v2    # "file":Ljava/io/File;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_6
.end method

.method private setBitmapToFile2(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "mActivity"    # Landroid/content/Context;
    .param p3, "imageName"    # Ljava/lang/String;
    .param p4, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    .line 351
    const/4 v1, 0x0

    .line 352
    .local v1, "file":Ljava/io/File;
    const-string v5, ""

    .line 354
    .local v5, "real_path":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cat/list/Util;->hasSDCard()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v8

    invoke-virtual {v8}, Lcom/cat/list/Util;->getExtPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    if-eqz p1, :cond_3

    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 355
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 363
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v5, p3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 364
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 365
    new-instance v3, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 366
    .local v3, "file2":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 368
    .end local v3    # "file2":Ljava/io/File;
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 369
    const/4 v4, 0x0

    .line 370
    .local v4, "fos":Ljava/io/FileOutputStream;
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cat/list/Util;->hasSDCard()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 371
    new-instance v4, Ljava/io/FileOutputStream;

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 376
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz p3, :cond_7

    .line 377
    const-string v7, ".png"

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 378
    const-string v7, ".PNG"

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 379
    :cond_1
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {p4, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 383
    :goto_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 384
    if-eqz v4, :cond_2

    .line 385
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 387
    :cond_2
    const/4 v6, 0x1

    move-object v1, v2

    .line 390
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "file":Ljava/io/File;
    :goto_4
    return v6

    .line 356
    .restart local p1    # "path":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 359
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v8

    invoke-virtual {v8, p2}, Lcom/cat/list/Util;->getPackagePath2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    if-eqz p1, :cond_5

    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .end local p1    # "path":Ljava/lang/String;
    :goto_5
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 359
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 360
    .restart local p1    # "path":Ljava/lang/String;
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p1

    goto :goto_5

    .line 373
    .end local v1    # "file":Ljava/io/File;
    .end local p1    # "path":Ljava/lang/String;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :cond_6
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {p2, p3, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v4

    goto :goto_2

    .line 381
    :cond_7
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5a

    invoke-virtual {p4, v7, v8, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 388
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 389
    .end local v2    # "file":Ljava/io/File;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "file":Ljava/io/File;
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 388
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_6
.end method


# virtual methods
.method public imageDownload(Ljava/lang/String;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/cat/list/OnImageDownload;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mImageView"    # Landroid/widget/RelativeLayout;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mActivity"    # Landroid/app/Activity;
    .param p5, "download"    # Lcom/cat/list/OnImageDownload;

    .prologue
    .line 50
    iget-object v3, p0, Lcom/cat/list/ImageDownloader;->imageCaches:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/SoftReference;

    .line 51
    .local v10, "currBitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v13, 0x0

    .line 52
    .local v13, "softRefBitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    .line 53
    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "softRefBitmap":Landroid/graphics/Bitmap;
    check-cast v13, Landroid/graphics/Bitmap;

    .line 55
    .restart local v13    # "softRefBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const-string v12, ""

    .line 56
    .local v12, "imageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 57
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/cat/list/Util;->getImageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 60
    :cond_1
    if-eqz v10, :cond_3

    if-eqz p2, :cond_3

    if-eqz v13, :cond_3

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4ece\u8f6f\u5f15\u7528\u4e2d\u62ff\u6570\u636e--imageName=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v11, v3, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 64
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    return-void

    .line 67
    :cond_3
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/widget/RelativeLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 69
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v12, v1}, Lcom/cat/list/ImageDownloader;->getBitmapFromFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 70
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_4

    .line 71
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v11, v3, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 72
    .restart local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 73
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    iget-object v3, p0, Lcom/cat/list/ImageDownloader;->imageCaches:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 79
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz p1, :cond_2

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/cat/list/ImageDownloader;->needCreateNewTask(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    new-instance v2, Lcom/cat/list/ImageDownloader$MyAsyncTask;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/cat/list/ImageDownloader$MyAsyncTask;-><init>(Lcom/cat/list/ImageDownloader;Ljava/lang/String;Landroid/widget/RelativeLayout;Ljava/lang/String;Landroid/app/Activity;Lcom/cat/list/OnImageDownload;)V

    .line 82
    .local v2, "task":Lcom/cat/list/ImageDownloader$MyAsyncTask;
    if-eqz p2, :cond_2

    .line 83
    const-string v3, "ImageDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6267\u884cMyAsyncTask --> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/cat/list/Util;->flag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget v3, Lcom/cat/list/Util;->flag:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/cat/list/Util;->flag:I

    .line 85
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cat/list/ImageDownloader$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 87
    iget-object v3, p0, Lcom/cat/list/ImageDownloader;->map:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public imageDownload2(Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Lcom/cat/list/OnImageDownload;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mImageView"    # Landroid/widget/ImageView;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "mContext"    # Landroid/content/Context;
    .param p5, "download"    # Lcom/cat/list/OnImageDownload;

    .prologue
    .line 95
    iget-object v3, p0, Lcom/cat/list/ImageDownloader;->imageCaches2:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/ref/SoftReference;

    .line 96
    .local v10, "currBitmap":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    const/4 v13, 0x0

    .line 97
    .local v13, "softRefBitmap":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_0

    .line 98
    invoke-virtual {v10}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "softRefBitmap":Landroid/graphics/Bitmap;
    check-cast v13, Landroid/graphics/Bitmap;

    .line 100
    .restart local v13    # "softRefBitmap":Landroid/graphics/Bitmap;
    :cond_0
    const-string v12, ""

    .line 101
    .local v12, "imageName":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 102
    invoke-static {}, Lcom/cat/list/Util;->getInstance()Lcom/cat/list/Util;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/cat/list/Util;->getImageName2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 105
    :cond_1
    if-eqz v10, :cond_3

    if-eqz p2, :cond_3

    if-eqz v13, :cond_3

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 107
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u4ece\u8f6f\u5f15\u7528\u4e2d\u62ff\u6570\u636e--imageName=="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v11, v3, v13}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 109
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-direct {p0, v0, v12, v1}, Lcom/cat/list/ImageDownloader;->getBitmapFromFile2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 115
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_4

    .line 116
    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v11, v3, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 117
    .restart local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 121
    iget-object v3, p0, Lcom/cat/list/ImageDownloader;->imageCaches2:Ljava/util/Map;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v9}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-eqz p1, :cond_2

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/cat/list/ImageDownloader;->needCreateNewTask2(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    new-instance v2, Lcom/cat/list/ImageDownloader$MyAsyncTask2;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/cat/list/ImageDownloader$MyAsyncTask2;-><init>(Lcom/cat/list/ImageDownloader;Ljava/lang/String;Landroid/widget/ImageView;Ljava/lang/String;Landroid/content/Context;Lcom/cat/list/OnImageDownload;)V

    .line 127
    .local v2, "task":Lcom/cat/list/ImageDownloader$MyAsyncTask2;
    if-eqz p2, :cond_2

    .line 128
    const-string v3, "ImageDownloader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u6267\u884cMyAsyncTask --> "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/cat/list/Util;->flag:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    sget v3, Lcom/cat/list/Util;->flag:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lcom/cat/list/Util;->flag:I

    .line 130
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/cat/list/ImageDownloader$MyAsyncTask2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    iget-object v3, p0, Lcom/cat/list/ImageDownloader;->map2:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
