.class public Lcom/ta/util/bitmap/TADownloadBitmapHandler;
.super Lcom/ta/util/bitmap/TAResizerBitmapHandler;
.source "TADownloadBitmapHandler.java"


# static fields
.field private static final DISK_CACHE_INDEX:I = 0x0

.field private static final HTTP_CACHE_DIR:Ljava/lang/String; = "http"

.field private static final HTTP_CACHE_SIZE:I = 0xa00000

.field private static final IO_BUFFER_SIZE:I = 0x2000

.field private static final TAG:Ljava/lang/String; = "TABitmapFetcher"


# instance fields
.field private mHttpCacheDir:Ljava/io/File;

.field private mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

.field private final mHttpDiskCacheLock:Ljava/lang/Object;

.field private mHttpDiskCacheStarting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageSize"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/ta/util/bitmap/TAResizerBitmapHandler;-><init>(Landroid/content/Context;I)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheStarting:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 74
    invoke-direct {p0, p1}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->init(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "imageWidth"    # I
    .param p3, "imageHeight"    # I

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/ta/util/bitmap/TAResizerBitmapHandler;-><init>(Landroid/content/Context;II)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheStarting:Z

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheLock:Ljava/lang/Object;

    .line 61
    invoke-direct {p0, p1}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public static disableConnectionReuseIfNecessary()V
    .locals 2

    .prologue
    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 353
    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 355
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {}, Lcom/ta/common/AndroidVersionCheckUtils;->hasGingerbread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "http"

    .line 81
    invoke-static {p1, v0}, Lcom/ta/util/cache/TAExternalOverFroyoUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpCacheDir:Ljava/io/File;

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->initDiskCacheInternal()V

    .line 89
    return-void

    .line 86
    :cond_0
    const-string v0, "http"

    .line 85
    invoke-static {p1, v0}, Lcom/ta/util/cache/TAExternalUnderFroyoUtils;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpCacheDir:Ljava/io/File;

    goto :goto_0
.end method

.method private initHttpDiskCache()V
    .locals 9

    .prologue
    const-wide/32 v5, 0xa00000

    .line 98
    iget-object v3, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 100
    iget-object v3, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpCacheDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 102
    :cond_0
    iget-object v4, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 104
    const-wide/16 v1, 0x0

    .line 105
    .local v1, "usableSpace":J
    :try_start_0
    invoke-static {}, Lcom/ta/common/AndroidVersionCheckUtils;->hasGingerbread()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    iget-object v3, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpCacheDir:Ljava/io/File;

    invoke-static {v3}, Lcom/ta/util/cache/TAExternalOverFroyoUtils;->getUsableSpace(Ljava/io/File;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    .line 114
    :goto_0
    cmp-long v3, v1, v5

    if-lez v3, :cond_1

    .line 118
    :try_start_1
    iget-object v3, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpCacheDir:Ljava/io/File;

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 119
    const-wide/32 v7, 0xa00000

    .line 118
    invoke-static {v3, v5, v6, v7, v8}, Lcom/ta/util/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/ta/util/cache/DiskLruCache;

    move-result-object v3

    iput-object v3, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :cond_1
    :goto_1
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheStarting:Z

    .line 126
    iget-object v3, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 102
    monitor-exit v4

    .line 128
    return-void

    .line 112
    :cond_2
    iget-object v3, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpCacheDir:Ljava/io/File;

    invoke-static {v3}, Lcom/ta/util/cache/TAExternalUnderFroyoUtils;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v1

    .line 111
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    goto :goto_1

    .line 102
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 192
    const-string v6, ""

    .line 193
    .local v6, "key":Ljava/lang/String;
    invoke-static {}, Lcom/ta/common/AndroidVersionCheckUtils;->hasGingerbread()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 195
    invoke-static {p1}, Lcom/ta/util/cache/TAExternalOverFroyoUtils;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    :goto_0
    const/4 v4, 0x0

    .line 201
    .local v4, "fileDescriptor":Ljava/io/FileDescriptor;
    const/4 v5, 0x0

    .line 203
    .local v5, "fileInputStream":Ljava/io/FileInputStream;
    iget-object v9, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v9

    .line 206
    :goto_1
    :try_start_0
    iget-boolean v8, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheStarting:Z

    if-nez v8, :cond_7

    .line 216
    iget-object v8, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v8, :cond_3

    .line 220
    :try_start_1
    iget-object v8, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v8, v6}, Lcom/ta/util/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/ta/util/cache/DiskLruCache$Snapshot;

    move-result-object v7

    .line 221
    .local v7, "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    if-nez v7, :cond_1

    .line 224
    iget-object v8, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v8, v6}, Lcom/ta/util/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/ta/util/cache/DiskLruCache$Editor;

    move-result-object v3

    .line 225
    .local v3, "editor":Lcom/ta/util/cache/DiskLruCache$Editor;
    if-eqz v3, :cond_0

    .line 228
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/ta/util/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v8

    .line 227
    invoke-virtual {p0, p1, v8}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z

    move-result v8

    .line 228
    if-eqz v8, :cond_8

    .line 230
    invoke-virtual {v3}, Lcom/ta/util/cache/DiskLruCache$Editor;->commit()V

    .line 236
    :cond_0
    :goto_2
    iget-object v8, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v8, v6}, Lcom/ta/util/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/ta/util/cache/DiskLruCache$Snapshot;

    move-result-object v7

    .line 238
    .end local v3    # "editor":Lcom/ta/util/cache/DiskLruCache$Editor;
    :cond_1
    if-eqz v7, :cond_2

    .line 241
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/ta/util/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v8

    .line 240
    move-object v0, v8

    check-cast v0, Ljava/io/FileInputStream;

    move-object v5, v0

    .line 242
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .line 252
    :cond_2
    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    .line 256
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    .end local v7    # "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    :cond_3
    :goto_3
    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    const/4 v1, 0x0

    .line 266
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_4

    .line 269
    iget v8, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mImageWidth:I

    iget v9, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mImageHeight:I

    .line 268
    invoke-static {v4, v8, v9}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->decodeSampledBitmapFromDescriptor(Ljava/io/FileDescriptor;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 271
    :cond_4
    if-eqz v5, :cond_5

    .line 275
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 280
    :cond_5
    :goto_4
    return-object v1

    .line 198
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "fileDescriptor":Ljava/io/FileDescriptor;
    .end local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_6
    invoke-static {p1}, Lcom/ta/util/cache/TAExternalUnderFroyoUtils;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 210
    .restart local v4    # "fileDescriptor":Ljava/io/FileDescriptor;
    .restart local v5    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_7
    :try_start_5
    iget-object v8, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 211
    :catch_0
    move-exception v8

    goto :goto_1

    .line 233
    .restart local v3    # "editor":Lcom/ta/util/cache/DiskLruCache$Editor;
    .restart local v7    # "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    :cond_8
    :try_start_6
    invoke-virtual {v3}, Lcom/ta/util/cache/DiskLruCache$Editor;->abort()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 244
    .end local v3    # "editor":Lcom/ta/util/cache/DiskLruCache$Editor;
    .end local v7    # "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    :catch_1
    move-exception v2

    .line 246
    .local v2, "e":Ljava/io/IOException;
    :try_start_7
    const-string v8, "TABitmapFetcher"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "processBitmap - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/ta/util/TALogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 252
    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    .line 256
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    .line 257
    :catch_2
    move-exception v8

    goto :goto_3

    .line 247
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 249
    .local v2, "e":Ljava/lang/IllegalStateException;
    :try_start_9
    const-string v8, "TABitmapFetcher"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "processBitmap - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/ta/util/TALogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 252
    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    .line 256
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_3

    .line 257
    :catch_4
    move-exception v8

    goto :goto_3

    .line 251
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v8

    .line 252
    if-nez v4, :cond_9

    if-eqz v5, :cond_9

    .line 256
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 261
    :cond_9
    :goto_5
    :try_start_c
    throw v8

    .line 203
    :catchall_1
    move-exception v8

    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    throw v8

    .line 257
    :catch_5
    move-exception v10

    goto :goto_5

    .restart local v7    # "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    :catch_6
    move-exception v8

    goto :goto_3

    .line 276
    .end local v7    # "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    .restart local v1    # "bitmap":Landroid/graphics/Bitmap;
    :catch_7
    move-exception v8

    goto :goto_4
.end method


# virtual methods
.method protected clearCacheInternal()V
    .locals 5

    .prologue
    .line 132
    iget-object v2, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 134
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 138
    :try_start_1
    iget-object v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache;->delete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    .line 145
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheStarting:Z

    .line 146
    invoke-direct {p0}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->initHttpDiskCache()V

    .line 132
    :cond_0
    monitor-exit v2

    .line 149
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TABitmapFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearCacheInternal - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected closeCacheInternal()V
    .locals 5

    .prologue
    .line 171
    iget-object v2, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 177
    :try_start_1
    iget-object v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache;->close()V

    .line 180
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 188
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TABitmapFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "closeCacheInternal - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public downloadUrlToStream(Ljava/lang/String;Ljava/io/OutputStream;)Z
    .locals 12
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 299
    invoke-static {}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->disableConnectionReuseIfNecessary()V

    .line 300
    const/4 v8, 0x0

    .line 301
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v5, 0x0

    .line 302
    .local v5, "out":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .line 306
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 307
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 308
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 309
    const/16 v10, 0x2000

    .line 308
    invoke-direct {v4, v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    const/16 v9, 0x2000

    invoke-direct {v6, p2, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .local v6, "out":Ljava/io/BufferedOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->read()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v1

    .local v1, "b":I
    const/4 v9, -0x1

    if-ne v1, v9, :cond_3

    .line 323
    if-eqz v8, :cond_0

    .line 325
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 329
    :cond_0
    if-eqz v6, :cond_1

    .line 331
    :try_start_3
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V

    .line 333
    :cond_1
    if-eqz v4, :cond_2

    .line 335
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 317
    :cond_2
    :goto_1
    const/4 v9, 0x1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 341
    .end local v1    # "b":I
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :goto_2
    return v9

    .line 315
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "b":I
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_3
    :try_start_4
    invoke-virtual {v6, v1}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 318
    .end local v1    # "b":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .line 320
    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .end local v7    # "url":Ljava/net/URL;
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    :goto_3
    :try_start_5
    const-string v9, "TABitmapFetcher"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Error in downloadBitmap - "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/ta/util/TALogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 323
    if-eqz v8, :cond_4

    .line 325
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 329
    :cond_4
    if-eqz v5, :cond_5

    .line 331
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 333
    :cond_5
    if-eqz v3, :cond_6

    .line 335
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 341
    :cond_6
    :goto_4
    const/4 v9, 0x0

    goto :goto_2

    .line 322
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 323
    :goto_5
    if-eqz v8, :cond_7

    .line 325
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 329
    :cond_7
    if-eqz v5, :cond_8

    .line 331
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    .line 333
    :cond_8
    if-eqz v3, :cond_9

    .line 335
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 340
    :cond_9
    :goto_6
    throw v9

    .line 337
    :catch_1
    move-exception v10

    goto :goto_6

    .line 322
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_5

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v9

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6    # "out":Ljava/io/BufferedOutputStream;
    .restart local v5    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 337
    .end local v7    # "url":Ljava/net/URL;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    goto :goto_4

    .line 318
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    goto :goto_3

    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    goto :goto_3

    .line 337
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "b":I
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v6    # "out":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v9

    goto :goto_1
.end method

.method protected flushCacheInternal()V
    .locals 5

    .prologue
    .line 153
    iget-object v2, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 159
    :try_start_1
    iget-object v1, p0, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->mHttpDiskCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 167
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "TABitmapFetcher"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "flush - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected initDiskCacheInternal()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->initHttpDiskCache()V

    .line 94
    return-void
.end method

.method protected processBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 286
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ta/util/bitmap/TADownloadBitmapHandler;->processBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
