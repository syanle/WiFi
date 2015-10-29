.class public Lcom/umeng/socialize/media/UMImage;
.super Lcom/umeng/socialize/media/BaseMediaObject;
.source "UMImage.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/umeng/socialize/media/UMImage;",
            ">;"
        }
    .end annotation
.end field

.field public static MAX_HEIGHT:I = 0x0

.field public static MAX_WIDTH:I = 0x0

.field private static final h:Ljava/lang/String;

.field private static final i:Ljava/lang/String; = "/umeng_cache/"


# instance fields
.field private j:Ljava/io/File;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:I

.field private n:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<[B>;"
        }
    .end annotation
.end field

.field private o:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/media/UMImage;->h:Ljava/lang/String;

    .line 69
    const/16 v0, 0x300

    sput v0, Lcom/umeng/socialize/media/UMImage;->MAX_WIDTH:I

    .line 73
    const/16 v0, 0x400

    sput v0, Lcom/umeng/socialize/media/UMImage;->MAX_HEIGHT:I

    .line 703
    new-instance v0, Lcom/umeng/socialize/media/UMImage$1;

    invoke-direct {v0}, Lcom/umeng/socialize/media/UMImage$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/media/UMImage;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 713
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 106
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->m:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    .line 64
    const/high16 v0, 0x45000000    # 2048.0f

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->o:F

    .line 107
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 115
    :try_start_0
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v0

    .line 116
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 137
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->m:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    .line 64
    const/high16 v0, 0x45000000    # 2048.0f

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->o:F

    .line 138
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;)V

    .line 140
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .prologue
    .line 80
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->m:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    .line 64
    const/high16 v0, 0x45000000    # 2048.0f

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->o:F

    .line 81
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p2}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->m:I

    .line 59
    iput-object v1, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    .line 64
    const/high16 v0, 0x45000000    # 2048.0f

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->o:F

    .line 91
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;)V

    .line 92
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/media/UMImage;->setMediaUrl(Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/lang/Object;)V

    .line 99
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[B)V
    .locals 1

    .prologue
    .line 127
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Ljava/lang/String;)V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->m:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    .line 64
    const/high16 v0, 0x45000000    # 2048.0f

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->o:F

    .line 128
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/content/Context;)V

    .line 129
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 682
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/BaseMediaObject;-><init>(Landroid/os/Parcel;)V

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    .line 54
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->m:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    .line 64
    const/high16 v0, 0x45000000    # 2048.0f

    iput v0, p0, Lcom/umeng/socialize/media/UMImage;->o:F

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 684
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    .line 686
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/media/UMImage;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 319
    invoke-static {}, Lcom/umeng/socom/util/BitmapUtils;->cleanCache()V

    .line 320
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->getCache()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 324
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 325
    return-object v0
.end method

.method static synthetic a([BLjava/io/File;)Ljava/io/File;
    .locals 1

    .prologue
    .line 491
    invoke-static {p0, p1}, Lcom/umeng/socialize/media/UMImage;->b([BLjava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/umeng/socialize/media/UMImage;->h:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 266
    if-nez p1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/socialize/media/UMImage$4;

    invoke-direct {v1, p0, p1}, Lcom/umeng/socialize/media/UMImage$4;-><init>(Lcom/umeng/socialize/media/UMImage;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 308
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/media/UMImage;)V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/umeng/socialize/media/UMImage;->b()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/media/UMImage;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 196
    if-nez p1, :cond_0

    .line 234
    :goto_0
    return-void

    .line 199
    :cond_0
    new-instance v0, Lcom/umeng/socialize/media/UMImage$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/media/UMImage$2;-><init>(Lcom/umeng/socialize/media/UMImage;Ljava/io/InputStream;)V

    .line 232
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage$2;->start()V

    goto :goto_0
.end method

.method private a([B)V
    .locals 2

    .prologue
    .line 243
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/socialize/media/UMImage$3;

    invoke-direct {v1, p0, p1}, Lcom/umeng/socialize/media/UMImage$3;-><init>(Lcom/umeng/socialize/media/UMImage;[B)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 257
    return-void
.end method

.method private a(Ljava/io/File;)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 551
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 565
    :cond_1
    :goto_0
    return-object v0

    .line 555
    :cond_2
    invoke-static {p1}, Lcom/umeng/socialize/media/UMImage;->b(Ljava/io/File;)[B

    move-result-object v0

    .line 557
    if-eqz v0, :cond_3

    array-length v2, v0

    if-lez v2, :cond_3

    .line 558
    invoke-static {v0}, Lcom/umeng/socialize/common/a;->a([B)Ljava/lang/String;

    move-result-object v1

    .line 559
    sget-object v2, Lcom/umeng/socialize/common/a;->m:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 562
    invoke-static {v0}, Lcom/umeng/socialize/media/UMImage;->b([B)[B

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 565
    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/socialize/media/UMImage;)F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/umeng/socialize/media/UMImage;->o:F

    return v0
.end method

.method private static b([BLjava/io/File;)Ljava/io/File;
    .locals 3

    .prologue
    .line 492
    const/4 v2, 0x0

    .line 495
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 496
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 497
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 501
    if-eqz v1, :cond_0

    .line 503
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 508
    :cond_0
    :goto_0
    return-object p1

    .line 498
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 499
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 501
    if-eqz v1, :cond_0

    .line 503
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 504
    :catch_1
    move-exception v0

    goto :goto_0

    .line 500
    :catchall_0
    move-exception v0

    .line 501
    :goto_2
    if-eqz v2, :cond_1

    .line 503
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 507
    :cond_1
    :goto_3
    throw v0

    .line 504
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_0

    .line 500
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    .line 498
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private b()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    .line 153
    return-void
.end method

.method private static b(Ljava/io/File;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 569
    .line 573
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 576
    const/16 v1, 0x1000

    :try_start_2
    new-array v1, v1, [B

    .line 578
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 581
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    .line 587
    if-eqz v3, :cond_0

    .line 588
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 590
    :cond_0
    if-eqz v2, :cond_1

    .line 591
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 596
    :cond_1
    :goto_1
    return-object v0

    .line 579
    :cond_2
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 582
    :catch_0
    move-exception v1

    .line 583
    :goto_2
    :try_start_5
    sget-object v4, Lcom/umeng/socialize/media/UMImage;->h:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v4, v5, v1}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 587
    if-eqz v3, :cond_3

    .line 588
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 590
    :cond_3
    if-eqz v2, :cond_1

    .line 591
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 593
    :catch_1
    move-exception v1

    goto :goto_1

    .line 585
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    .line 587
    :goto_3
    if-eqz v3, :cond_4

    .line 588
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 590
    :cond_4
    if-eqz v2, :cond_5

    .line 591
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 595
    :cond_5
    :goto_4
    throw v0

    .line 593
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_4

    .line 585
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    .line 582
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto :goto_2

    :catch_5
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method private static b([B)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 606
    .line 611
    :try_start_0
    invoke-static {p0}, Lcom/umeng/socialize/media/UMImage;->c([B)Landroid/graphics/BitmapFactory$Options;

    move-result-object v1

    .line 612
    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 614
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    if-eqz v2, :cond_0

    .line 616
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 617
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 619
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 621
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 624
    if-eqz v1, :cond_1

    .line 626
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 631
    :cond_1
    :goto_0
    return-object v0

    .line 622
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 624
    :goto_1
    if-eqz v1, :cond_1

    .line 626
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 627
    :catch_1
    move-exception v1

    goto :goto_0

    .line 623
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 624
    :goto_2
    if-eqz v1, :cond_2

    .line 626
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 630
    :cond_2
    :goto_3
    throw v0

    .line 627
    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_0

    .line 623
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 622
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 521
    .line 522
    if-nez p0, :cond_1

    .line 540
    :cond_0
    :goto_0
    return-object v0

    .line 526
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    :try_start_1
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 528
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 533
    if-eqz v2, :cond_0

    .line 535
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 536
    :catch_0
    move-exception v1

    goto :goto_0

    .line 530
    :catch_1
    move-exception v1

    move-object v2, v0

    .line 531
    :goto_1
    :try_start_3
    sget-object v3, Lcom/umeng/socialize/media/UMImage;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 533
    if-eqz v2, :cond_0

    .line 535
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 536
    :catch_2
    move-exception v1

    goto :goto_0

    .line 532
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 533
    :goto_2
    if-eqz v2, :cond_2

    .line 535
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 539
    :cond_2
    :goto_3
    throw v0

    .line 536
    :catch_3
    move-exception v1

    goto :goto_3

    .line 532
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 530
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private static c([B)Landroid/graphics/BitmapFactory$Options;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 641
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 642
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 643
    array-length v1, p0

    invoke-static {p0, v5, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 646
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget v2, Lcom/umeng/socialize/media/UMImage;->MAX_WIDTH:I

    div-int/2addr v1, v2

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 648
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 649
    sget v3, Lcom/umeng/socialize/media/UMImage;->MAX_HEIGHT:I

    .line 648
    div-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 655
    if-le v2, v4, :cond_2

    if-le v1, v4, :cond_2

    .line 656
    if-le v2, v1, :cond_1

    .line 658
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 671
    :cond_0
    :goto_0
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 672
    sget-object v1, Lcom/umeng/socialize/media/UMImage;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "### \u56fe\u7247\u7f29\u653e\u6bd4\u4f8b : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-object v0

    .line 661
    :cond_1
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 663
    :cond_2
    if-le v2, v6, :cond_3

    .line 665
    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 666
    :cond_3
    if-le v1, v6, :cond_0

    .line 668
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0
.end method

.method private c()[B
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 404
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 405
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 406
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 407
    sget-object v0, Lcom/umeng/socialize/media/UMImage;->h:Ljava/lang/String;

    const-string v1, "### \u4ece\u7f13\u5b58\u4e2d\u83b7\u53d6\u56fe\u7247\u6570\u636e "

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 457
    :cond_0
    :goto_0
    return-object v0

    .line 411
    :cond_1
    new-array v0, v1, [B

    .line 412
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 416
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".png"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 418
    const-string v1, "jpeg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "jpg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 419
    const-string v1, "gif"

    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    :cond_2
    const/16 v1, 0x96

    const/16 v3, 0x96

    invoke-static {v2, v1, v3}, Lcom/umeng/socom/util/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_3

    .line 424
    invoke-static {v1}, Lcom/umeng/socialize/media/UMImage;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 453
    :goto_1
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 454
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/umeng/socialize/media/UMImage;->n:Ljava/lang/ref/SoftReference;

    .line 455
    sget-object v1, Lcom/umeng/socialize/media/UMImage;->h:Ljava/lang/String;

    const-string v2, "### \u9996\u6b21\u751f\u6210\u56fe\u7247\u4e8c\u8fdb\u5236\u6570\u636e"

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_3
    :try_start_1
    invoke-static {v2}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->getNetData(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 428
    const/4 v0, 0x0

    :try_start_2
    array-length v3, v1

    invoke-static {v1, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 429
    invoke-static {v2, v0}, Lcom/umeng/socom/util/BitmapUtils;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 431
    goto :goto_1

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 432
    :goto_2
    sget-object v2, Lcom/umeng/socialize/media/UMImage;->h:Ljava/lang/String;

    const-string v3, "get image data from network failed."

    invoke-static {v2, v3, v0}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    .line 434
    goto :goto_1

    .line 435
    :cond_4
    iget-boolean v2, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    if-eqz v2, :cond_6

    .line 436
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/io/File;)[B

    move-result-object v0

    goto :goto_1

    .line 439
    :cond_5
    iget-boolean v2, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    if-eqz v2, :cond_7

    .line 440
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/io/File;)[B

    move-result-object v0

    .line 438
    :goto_3
    add-int/lit8 v1, v1, 0x1

    :cond_6
    const/16 v2, 0x1e

    if-lt v1, v2, :cond_5

    goto :goto_1

    .line 443
    :cond_7
    const-wide/16 v2, 0x64

    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 444
    :catch_1
    move-exception v2

    .line 445
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 431
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method static synthetic c(Lcom/umeng/socialize/media/UMImage;)[B
    .locals 1

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/umeng/socialize/media/UMImage;->c()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 145
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    .line 163
    instance-of v0, p1, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 164
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/graphics/Bitmap;)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    instance-of v0, p1, [B

    if-eqz v0, :cond_2

    .line 166
    check-cast p1, [B

    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/UMImage;->a([B)V

    goto :goto_0

    .line 167
    :cond_2
    instance-of v0, p1, Ljava/io/File;

    if-eqz v0, :cond_5

    .line 168
    check-cast p1, Ljava/io/File;

    .line 169
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    .line 170
    :cond_3
    sget-object v0, Lcom/umeng/socialize/media/UMImage;->h:Ljava/lang/String;

    const-string v1, "the image file is no exist.."

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_4
    iput-object p1, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    .line 173
    invoke-direct {p0}, Lcom/umeng/socialize/media/UMImage;->b()V

    goto :goto_0

    .line 174
    :cond_5
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_6

    .line 176
    :try_start_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 177
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 178
    invoke-direct {p0, v0}, Lcom/umeng/socialize/media/UMImage;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    sget-object v1, Lcom/umeng/socialize/media/UMImage;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sorry cannot setImage..["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_6
    instance-of v0, p1, Ljava/io/InputStream;

    if-eqz v0, :cond_7

    .line 183
    check-cast p1, Ljava/io/InputStream;

    invoke-direct {p0, p1}, Lcom/umeng/socialize/media/UMImage;->a(Ljava/io/InputStream;)V

    goto :goto_0

    .line 184
    :cond_7
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    goto :goto_0
.end method

.method public getCache()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 336
    invoke-static {}, Lcom/umeng/socom/DeviceConfig;->isSdCardWrittenable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 337
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 338
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/umeng_cache/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 351
    :cond_0
    return-object v1

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 340
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    goto :goto_0

    .line 342
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "dirpath is unknow"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 750
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 751
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    return-object v0
.end method

.method public getImageCachePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    instance-of v0, v0, Ljava/io/File;

    if-eqz v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 488
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageSizeLimit()F
    .locals 1

    .prologue
    .line 732
    iget v0, p0, Lcom/umeng/socialize/media/UMImage;->o:F

    return v0
.end method

.method public getMaxWaitTimes()I
    .locals 1

    .prologue
    .line 779
    iget v0, p0, Lcom/umeng/socialize/media/UMImage;->m:I

    return v0
.end method

.method public getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 1

    .prologue
    .line 678
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    return-object v0
.end method

.method public isMultiMedia()Z
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x1

    return v0
.end method

.method public isSerialized()Z
    .locals 1

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    return v0
.end method

.method public setImageSizeLimit(F)V
    .locals 0

    .prologue
    .line 741
    iput p1, p0, Lcom/umeng/socialize/media/UMImage;->o:F

    .line 742
    return-void
.end method

.method public setMaxWaitTimes(I)V
    .locals 0

    .prologue
    .line 769
    iput p1, p0, Lcom/umeng/socialize/media/UMImage;->m:I

    .line 770
    return-void
.end method

.method public toByte(Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V
    .locals 2

    .prologue
    .line 364
    if-nez p1, :cond_0

    .line 385
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;->onStart()V

    .line 368
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 369
    new-instance v0, Lcom/umeng/socialize/media/UMImage$5;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/media/UMImage$5;-><init>(Lcom/umeng/socialize/media/UMImage;Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 381
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/media/UMImage$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 383
    :cond_1
    invoke-direct {p0}, Lcom/umeng/socialize/media/UMImage;->c()[B

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/umeng/socialize/media/UMediaObject$FetchMediaDataListener;->onComplete([B)V

    goto :goto_0
.end method

.method public toByte()[B
    .locals 1

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/umeng/socialize/media/UMImage;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UMImage [fileObj="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sandCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 718
    const-string v1, ", isSerialized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/umeng/socialize/media/UMImage;->l:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "media_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 719
    const-string v1, ", qzone_title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", qzone_thumb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 720
    iget-object v1, p0, Lcom/umeng/socialize/media/UMImage;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 717
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toUrlExtraParams()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 471
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 472
    sget-object v1, Lcom/umeng/socialize/net/utils/a;->y:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/media/UMImage;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v1, Lcom/umeng/socialize/net/utils/a;->z:Ljava/lang/String;

    .line 474
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    .line 473
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :cond_0
    return-object v0
.end method

.method public waitImageToSerialize()V
    .locals 3

    .prologue
    .line 786
    const/4 v0, 0x0

    .line 788
    :goto_0
    :try_start_0
    iget v1, p0, Lcom/umeng/socialize/media/UMImage;->m:I

    if-ge v0, v1, :cond_0

    .line 789
    invoke-virtual {p0}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    :cond_0
    :goto_1
    return-void

    .line 790
    :cond_1
    const-wide/16 v1, 0xc8

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 793
    :catch_0
    move-exception v0

    .line 794
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 694
    invoke-super {p0, p1, p2}, Lcom/umeng/socialize/media/BaseMediaObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 695
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->j:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 700
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/media/UMImage;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 701
    return-void

    .line 698
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0
.end method
