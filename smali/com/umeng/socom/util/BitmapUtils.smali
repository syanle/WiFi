.class public Lcom/umeng/socom/util/BitmapUtils;
.super Ljava/lang/Object;
.source "BitmapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socom/util/BitmapUtils$a;
    }
.end annotation


# static fields
.field public static final COMPRESS_FLAG:I = 0x300000

.field public static final FOLDER:Ljava/lang/String; = "umeng_cache"

.field public static PATH:Ljava/lang/String; = null

.field private static final a:Ljava/lang/String;

.field private static final b:I = 0x100000

.field private static final c:I = 0x28

.field private static final d:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string v0, "/mnt/sdcard/"

    sput-object v0, Lcom/umeng/socom/util/BitmapUtils;->PATH:Ljava/lang/String;

    .line 42
    const-class v0, Lcom/umeng/socom/util/BitmapUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socom/util/BitmapUtils;->a:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/umeng/socom/util/BitmapUtils;->init()V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()I
    .locals 5

    .prologue
    .line 515
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 516
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 515
    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-double v1, v1

    .line 518
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-double v3, v0

    .line 517
    mul-double v0, v1, v3

    .line 518
    const-wide/high16 v2, 0x4130000000000000L    # 1048576.0

    .line 517
    div-double/2addr v0, v2

    .line 520
    double-to-int v0, v0

    return v0
.end method

.method private static a(Ljava/lang/String;II)Landroid/graphics/BitmapFactory$Options;
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 145
    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 146
    if-nez v2, :cond_0

    .line 181
    :goto_0
    return-object v0

    .line 149
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 150
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 152
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 154
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v1, p2

    int-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    .line 157
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v3, p1

    int-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    .line 163
    if-le v1, v5, :cond_1

    if-le v3, v5, :cond_1

    .line 164
    if-le v1, v3, :cond_2

    .line 166
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 174
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :goto_2
    invoke-static {v2}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 169
    :cond_2
    :try_start_1
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 175
    :catch_0
    move-exception v1

    .line 176
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private static a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 192
    const/4 v1, 0x0

    .line 195
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-gtz v1, :cond_1

    .line 201
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    .line 203
    :try_start_2
    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/socom/util/BitmapUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 206
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 211
    :cond_1
    :goto_1
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 208
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 209
    :goto_2
    const-string v2, "BitmapUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8bfb\u53d6\u56fe\u7247\u6d41\u51fa\u9519"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 208
    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2
.end method

.method private static a(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 403
    if-eqz p0, :cond_0

    .line 405
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v0

    .line 407
    sget-object v1, Lcom/umeng/socom/util/BitmapUtils;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 554
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 556
    array-length v0, v3

    if-nez v0, :cond_1

    .line 576
    :cond_0
    return-void

    :cond_1
    move v0, v1

    move v2, v1

    .line 562
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_3

    .line 566
    const/high16 v0, 0xa00000

    if-gt v2, v0, :cond_2

    const/16 v0, 0x28

    invoke-static {}, Lcom/umeng/socom/util/BitmapUtils;->a()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 567
    :cond_2
    const-wide v4, 0x3fd999999999999aL    # 0.4

    array-length v0, v3

    int-to-double v6, v0

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 569
    new-instance v2, Lcom/umeng/socom/util/BitmapUtils$a;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/umeng/socom/util/BitmapUtils$a;-><init>(Lcom/umeng/socom/util/BitmapUtils$a;)V

    invoke-static {v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 571
    :goto_1
    if-ge v1, v0, :cond_0

    .line 572
    aget-object v2, v3, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 571
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 563
    :cond_3
    int-to-long v4, v2

    aget-object v2, v3, v0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v2, v4

    .line 562
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 444
    .line 445
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 446
    :cond_0
    sget-object v1, Lcom/umeng/socom/util/BitmapUtils;->a:Ljava/lang/String;

    const-string v2, "bitmap2Bytes  ==> bitmap == null or bitmap.isRecycled()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1
    :goto_0
    return-object v0

    .line 450
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 452
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 457
    if-eqz v2, :cond_1

    .line 459
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    goto :goto_0

    .line 454
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 455
    :goto_1
    :try_start_3
    sget-object v3, Lcom/umeng/socom/util/BitmapUtils;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 457
    if-eqz v2, :cond_1

    .line 459
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 460
    :catch_2
    move-exception v1

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 457
    :goto_2
    if-eqz v2, :cond_3

    .line 459
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 463
    :cond_3
    :goto_3
    throw v0

    .line 460
    :catch_3
    move-exception v1

    goto :goto_3

    .line 456
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 454
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method public static cleanCache()V
    .locals 0

    .prologue
    .line 654
    invoke-static {}, Lcom/umeng/socom/util/BitmapUtils;->init()V

    .line 655
    return-void
.end method

.method public static getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 335
    if-nez v1, :cond_0

    .line 341
    :goto_0
    return-object v0

    .line 338
    :cond_0
    invoke-static {v1, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 340
    invoke-static {v1}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 358
    if-nez v1, :cond_0

    .line 365
    :goto_0
    return-object v0

    .line 362
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/lang/String;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 361
    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 364
    invoke-static {v1}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public static getBitmapOptions([B)Landroid/graphics/BitmapFactory$Options;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 474
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 475
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 476
    array-length v1, p0

    invoke-static {p0, v5, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 479
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget v2, Lcom/umeng/socialize/media/UMImage;->MAX_WIDTH:I

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 481
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 482
    sget v3, Lcom/umeng/socialize/media/UMImage;->MAX_HEIGHT:I

    .line 481
    div-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 488
    if-le v2, v4, :cond_2

    if-le v1, v4, :cond_2

    .line 489
    if-le v2, v1, :cond_1

    .line 491
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 504
    :cond_0
    :goto_0
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 505
    return-object v0

    .line 494
    :cond_1
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 496
    :cond_2
    if-le v2, v6, :cond_3

    .line 498
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 499
    :cond_3
    if-le v1, v6, :cond_0

    .line 501
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 424
    .line 425
    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/umeng/socom/util/BitmapUtils;->PATH:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/socom/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 428
    :cond_1
    return-object p0
.end method

.method public static init()V
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 59
    const-string v1, "mounted"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 60
    if-eqz v0, :cond_1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "umeng_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socom/util/BitmapUtils;->PATH:Ljava/lang/String;

    .line 68
    :goto_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/umeng/socom/util/BitmapUtils;->PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 75
    :cond_0
    :try_start_0
    sget-object v0, Lcom/umeng/socom/util/BitmapUtils;->PATH:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socom/util/BitmapUtils;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_1
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 81
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    const-string v1, "umeng_cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socom/util/BitmapUtils;->PATH:Ljava/lang/String;

    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    const-string v1, "BitmapUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6e05\u9664\u7f13\u5b58\u629b\u51fa\u5f02\u5e38 \uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isCacheFileExist(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 298
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const/4 v0, 0x1

    .line 302
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNeedScale(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    .line 314
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 316
    const/4 v0, 0x1

    .line 318
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScaleBitmap(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    .line 282
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 250
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    :goto_0
    return-object v0

    .line 256
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 258
    const/4 v1, 0x0

    .line 259
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/lang/String;II)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 258
    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 263
    invoke-static {v2}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 261
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 263
    invoke-static {v2}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 262
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 263
    :goto_2
    invoke-static {v2}, Lcom/umeng/socom/util/BitmapUtils;->a(Ljava/io/InputStream;)V

    .line 264
    throw v0

    .line 262
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 260
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 382
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    .line 383
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-static {p0}, Lcom/umeng/socom/util/BitmapUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 384
    const/16 v0, 0x64

    .line 385
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    const/high16 v3, 0x300000

    if-le v2, v3, :cond_0

    .line 386
    const/16 v0, 0x50

    .line 388
    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p1, v2, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 389
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 390
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
