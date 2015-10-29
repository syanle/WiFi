.class public Lcom/ta/util/cache/TAFileCache;
.super Ljava/lang/Object;
.source "TAFileCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ta/util/cache/TAFileCache$TACacheParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLEAR_DISK_CACHE_ON_START:Z = false

.field private static final DEFAULT_COMPRESS_QUALITY:I = 0x46

.field private static final DEFAULT_DISK_CACHE_ENABLED:Z = true

.field public static final DEFAULT_DISK_CACHE_SIZE:I = 0xa00000

.field private static final DEFAULT_INIT_DISK_CACHE_ON_CREATE:Z = false

.field private static final DEFAULT_MEM_CACHE_ENABLED:Z = true

.field private static final DEFAULT_MEM_CACHE_SIZE:I = 0x500000

.field private static final DISK_CACHE_INDEX:I


# instance fields
.field private mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskCacheStarting:Z

.field private mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

.field private mMemoryCache:Lcom/ta/util/cache/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ta/util/cache/LruCache",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uniqueName"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheStarting:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Lcom/ta/util/cache/TAFileCache$TACacheParams;

    invoke-direct {v0, p1, p2}, Lcom/ta/util/cache/TAFileCache$TACacheParams;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ta/util/cache/TAFileCache;->init(Lcom/ta/util/cache/TAFileCache$TACacheParams;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lcom/ta/util/cache/TAFileCache$TACacheParams;)V
    .locals 1
    .param p1, "cacheParams"    # Lcom/ta/util/cache/TAFileCache$TACacheParams;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheStarting:Z

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 64
    invoke-direct {p0, p1}, Lcom/ta/util/cache/TAFileCache;->init(Lcom/ta/util/cache/TAFileCache$TACacheParams;)V

    .line 65
    return-void
.end method

.method static synthetic access$0(Lcom/ta/util/cache/TAFileCache;Ljava/lang/String;[B)I
    .locals 1

    .prologue
    .line 432
    invoke-direct {p0, p1, p2}, Lcom/ta/util/cache/TAFileCache;->getSize(Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method private getSize(Ljava/lang/String;[B)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 435
    array-length v0, p2

    return v0
.end method

.method private init(Lcom/ta/util/cache/TAFileCache$TACacheParams;)V
    .locals 2
    .param p1, "cacheParams"    # Lcom/ta/util/cache/TAFileCache$TACacheParams;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ta/util/cache/TAFileCache;->mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

    .line 84
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCache;->mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

    iget-boolean v0, v0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->memoryCacheEnabled:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/ta/util/cache/TAFileCache$1;

    .line 87
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

    iget v1, v1, Lcom/ta/util/cache/TAFileCache$TACacheParams;->memCacheSize:I

    invoke-direct {v0, p0, v1}, Lcom/ta/util/cache/TAFileCache$1;-><init>(Lcom/ta/util/cache/TAFileCache;I)V

    .line 86
    iput-object v0, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ta/util/cache/TAFileCache;->mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

    iget-boolean v0, v0, Lcom/ta/util/cache/TAFileCache$TACacheParams;->initDiskCacheOnCreate:Z

    if-nez v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/ta/util/cache/TAFileCache;->initDiskCache()V

    .line 104
    :cond_1
    return-void
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 336
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 337
    .local v2, "outStream":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v0, v3, [B

    .line 338
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .line 339
    .local v1, "len":I
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 343
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 344
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 341
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public addBufferToCache(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "buffer"    # [B

    .prologue
    .line 164
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    invoke-virtual {v5, p1}, Lcom/ta/util/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 172
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    invoke-virtual {v5, p1, p2}, Lcom/ta/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_2
    iget-object v6, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 178
    :try_start_0
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    if-eqz v5, :cond_4

    .line 180
    const-string v2, ""

    .line 181
    .local v2, "key":Ljava/lang/String;
    invoke-static {}, Lcom/ta/common/AndroidVersionCheckUtils;->hasGingerbread()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 183
    invoke-static {p1}, Lcom/ta/util/cache/TAExternalOverFroyoUtils;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 188
    :goto_1
    const/4 v3, 0x0

    .line 191
    .local v3, "out":Ljava/io/OutputStream;
    :try_start_1
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v5, v2}, Lcom/ta/util/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/ta/util/cache/DiskLruCache$Snapshot;

    move-result-object v4

    .line 192
    .local v4, "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    if-nez v4, :cond_6

    .line 194
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    .line 195
    invoke-virtual {v5, v2}, Lcom/ta/util/cache/DiskLruCache;->edit(Ljava/lang/String;)Lcom/ta/util/cache/DiskLruCache$Editor;

    move-result-object v1

    .line 196
    .local v1, "editor":Lcom/ta/util/cache/DiskLruCache$Editor;
    if-eqz v1, :cond_3

    .line 198
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/ta/util/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v3

    .line 199
    const/4 v5, 0x0

    array-length v7, p2

    invoke-virtual {v3, p2, v5, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 200
    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache$Editor;->commit()V

    .line 201
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    .end local v1    # "editor":Lcom/ta/util/cache/DiskLruCache$Editor;
    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 219
    :try_start_2
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "out":Ljava/io/OutputStream;
    .end local v4    # "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    :cond_4
    :goto_3
    :try_start_3
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 186
    .restart local v2    # "key":Ljava/lang/String;
    :cond_5
    :try_start_4
    invoke-static {p1}, Lcom/ta/util/cache/TAExternalUnderFroyoUtils;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 205
    .restart local v3    # "out":Ljava/io/OutputStream;
    .restart local v4    # "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    :cond_6
    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {v4, v5}, Lcom/ta/util/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 207
    .end local v4    # "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/IOException;
    :try_start_6
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "addBufferToCache - "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 217
    if-eqz v3, :cond_4

    .line 219
    :try_start_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_3

    .line 221
    :catch_1
    move-exception v5

    goto :goto_3

    .line 210
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 212
    .local v0, "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "addBufferToCache - "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 217
    if-eqz v3, :cond_4

    .line 219
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 221
    :catch_3
    move-exception v5

    goto :goto_3

    .line 214
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    .line 217
    if-eqz v3, :cond_7

    .line 219
    :try_start_a
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 224
    :cond_7
    :goto_4
    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 221
    :catch_4
    move-exception v7

    goto :goto_4

    .restart local v4    # "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    :catch_5
    move-exception v5

    goto :goto_3
.end method

.method public clearCache()V
    .locals 4

    .prologue
    .line 353
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/LruCache;->evictAll()V

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 360
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheStarting:Z

    .line 361
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache;->isClosed()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    .line 365
    :try_start_1
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache;->delete()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 371
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    .line 372
    invoke-virtual {p0}, Lcom/ta/util/cache/TAFileCache;->initDiskCache()V

    .line 358
    :cond_1
    monitor-exit v2

    .line 375
    return-void

    .line 367
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "clearCache - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 4

    .prologue
    .line 402
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 404
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 408
    :try_start_1
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 410
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache;->close()V

    .line 411
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 402
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 423
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "close"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public flush()V
    .locals 4

    .prologue
    .line 382
    iget-object v2, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 388
    :try_start_1
    iget-object v1, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v1}, Lcom/ta/util/cache/DiskLruCache;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 395
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "flush - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 382
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getBufferFromDiskCache(Ljava/lang/String;)[B
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 270
    const-string v3, ""

    .line 271
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Lcom/ta/common/AndroidVersionCheckUtils;->hasGingerbread()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 273
    invoke-static {p1}, Lcom/ta/util/cache/TAExternalOverFroyoUtils;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 279
    :goto_0
    iget-object v6, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v6

    .line 281
    :goto_1
    :try_start_0
    iget-boolean v5, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheStarting:Z

    if-nez v5, :cond_2

    .line 290
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_3

    .line 292
    const/4 v0, 0x0

    .line 295
    .local v0, "buffer":[B
    :try_start_1
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    .line 296
    invoke-virtual {v5, v3}, Lcom/ta/util/cache/DiskLruCache;->get(Ljava/lang/String;)Lcom/ta/util/cache/DiskLruCache$Snapshot;

    move-result-object v4

    .line 297
    .local v4, "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    if-eqz v4, :cond_3

    .line 300
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ta/util/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v2

    .line 302
    .local v2, "fileInputStream":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/ta/util/cache/TAFileCache;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 304
    if-eqz v0, :cond_0

    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    if-eqz v5, :cond_0

    .line 305
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    invoke-virtual {v5, p1}, Lcom/ta/util/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 307
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    invoke-virtual {v5, p1, v0}, Lcom/ta/util/cache/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    :cond_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 327
    .end local v0    # "buffer":[B
    .end local v2    # "fileInputStream":Ljava/io/InputStream;
    .end local v4    # "snapshot":Lcom/ta/util/cache/DiskLruCache$Snapshot;
    :goto_2
    return-object v0

    .line 276
    :cond_1
    invoke-static {p1}, Lcom/ta/util/cache/TAExternalUnderFroyoUtils;->hashKeyForDisk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 285
    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 286
    :catch_0
    move-exception v5

    goto :goto_1

    .line 311
    .restart local v0    # "buffer":[B
    :catch_1
    move-exception v1

    .line 314
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "getBufferFromDiskCache - "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 314
    invoke-static {p0, v5}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/io/IOException;
    :cond_3
    :goto_3
    monitor-exit v6

    const/4 v0, 0x0

    goto :goto_2

    .line 316
    .restart local v0    # "buffer":[B
    :catch_2
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "getBufferFromDiskCache - "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 320
    invoke-static {p0, v5}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 279
    .end local v0    # "buffer":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5
.end method

.method public getBufferFromMemCache(Ljava/lang/String;)[B
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 238
    const/4 v2, 0x0

    .line 241
    .local v2, "memValue":[B
    :try_start_0
    iget-object v3, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    if-eqz v3, :cond_0

    .line 243
    iget-object v3, p0, Lcom/ta/util/cache/TAFileCache;->mMemoryCache:Lcom/ta/util/cache/LruCache;

    invoke-virtual {v3, p1}, Lcom/ta/util/cache/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    :cond_0
    :goto_0
    return-object v2

    .line 252
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 256
    const-string v3, "\u83b7\u53d6\u7f13\u5b58\u6570\u636e\u5931\u8d25\uff01"

    invoke-static {p0, v3}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public initDiskCache()V
    .locals 9

    .prologue
    .line 112
    iget-object v5, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 114
    :try_start_0
    iget-object v4, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;

    invoke-virtual {v4}, Lcom/ta/util/cache/DiskLruCache;->isClosed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 116
    :cond_0
    iget-object v4, p0, Lcom/ta/util/cache/TAFileCache;->mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

    iget-object v0, v4, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheDir:Ljava/io/File;

    .line 117
    .local v0, "diskCacheDir":Ljava/io/File;
    iget-object v4, p0, Lcom/ta/util/cache/TAFileCache;->mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

    iget-boolean v4, v4, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheEnabled:Z

    if-eqz v4, :cond_2

    if-eqz v0, :cond_2

    .line 119
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 123
    :cond_1
    const-wide/16 v2, 0x0

    .line 124
    .local v2, "usableSpace":J
    invoke-static {}, Lcom/ta/common/AndroidVersionCheckUtils;->hasGingerbread()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 127
    invoke-static {v0}, Lcom/ta/util/cache/TAExternalOverFroyoUtils;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v2

    .line 133
    :goto_0
    iget-object v4, p0, Lcom/ta/util/cache/TAFileCache;->mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

    iget v4, v4, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v6, v4

    cmp-long v4, v2, v6

    if-lez v4, :cond_2

    .line 138
    const/4 v4, 0x1

    .line 139
    const/4 v6, 0x1

    const-wide/32 v7, 0xa00000

    .line 138
    :try_start_1
    invoke-static {v0, v4, v6, v7, v8}, Lcom/ta/util/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/ta/util/cache/DiskLruCache;

    move-result-object v4

    iput-object v4, p0, Lcom/ta/util/cache/TAFileCache;->mDiskLruCache:Lcom/ta/util/cache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    .end local v0    # "diskCacheDir":Ljava/io/File;
    .end local v2    # "usableSpace":J
    :cond_2
    :goto_1
    const/4 v4, 0x0

    :try_start_2
    iput-boolean v4, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheStarting:Z

    .line 150
    iget-object v4, p0, Lcom/ta/util/cache/TAFileCache;->mDiskCacheLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit v5

    .line 152
    return-void

    .line 131
    .restart local v0    # "diskCacheDir":Ljava/io/File;
    .restart local v2    # "usableSpace":J
    :cond_3
    invoke-static {v0}, Lcom/ta/util/cache/TAExternalUnderFroyoUtils;->getUsableSpace(Ljava/io/File;)J

    move-result-wide v2

    .line 130
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/ta/util/cache/TAFileCache;->mCacheParams:Lcom/ta/util/cache/TAFileCache$TACacheParams;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/ta/util/cache/TAFileCache$TACacheParams;->diskCacheDir:Ljava/io/File;

    .line 144
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "initDiskCache - "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/ta/util/TALogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 112
    .end local v0    # "diskCacheDir":Ljava/io/File;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "usableSpace":J
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method
