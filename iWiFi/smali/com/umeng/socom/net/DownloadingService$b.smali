.class Lcom/umeng/socom/net/DownloadingService$b;
.super Ljava/lang/Thread;
.source "DownloadingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socom/net/DownloadingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socom/net/DownloadingService;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:J

.field private f:J

.field private g:I

.field private h:I

.field private i:Lcom/umeng/socom/net/DownloadingService$a;

.field private j:Lcom/umeng/socom/net/a$a;


# direct methods
.method public constructor <init>(Lcom/umeng/socom/net/DownloadingService;Landroid/content/Context;Lcom/umeng/socom/net/a$a;IILcom/umeng/socom/net/DownloadingService$a;)V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 492
    iput-object p1, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    .line 491
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 481
    iput v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    .line 482
    iput-wide v3, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    .line 483
    iput-wide v3, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    .line 484
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->g:I

    .line 494
    :try_start_0
    iput-object p2, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    .line 495
    iput-object p3, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    .line 496
    iput p5, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    .line 498
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/DownloadingService$d;

    .line 500
    iget-object v0, v0, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    .line 501
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v2, :cond_0

    .line 502
    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iput-wide v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    .line 503
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    .line 507
    :cond_0
    iput-object p6, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    .line 508
    iput p4, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    .line 510
    invoke-static {}, Lcom/umeng/socom/DeviceConfig;->isSdCardWrittenable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->c:Ljava/lang/String;

    .line 512
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 516
    :goto_0
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/download/.um/apk"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->c:Ljava/lang/String;

    .line 517
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 523
    :goto_1
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 519
    :catch_0
    move-exception v0

    .line 520
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 521
    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    iget v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-interface {v1, v2, v0}, Lcom/umeng/socom/net/DownloadingService$a;->a(ILjava/lang/Exception;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/umeng/socom/net/DownloadingService$b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Ljava/lang/Exception;)V
    .locals 8

    .prologue
    .line 788
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "can not install. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-interface {v0, v1, p1}, Lcom/umeng/socom/net/DownloadingService$a;->a(ILjava/lang/Exception;)V

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-wide v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    iget-wide v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    iget v6, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;Lcom/umeng/socom/net/a$a;JJJ)V

    .line 795
    return-void
.end method

.method private a(Z)V
    .locals 13

    .prologue
    .line 557
    const/4 v2, 0x0

    .line 558
    const/4 v1, 0x0

    .line 560
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v3, v3, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/umeng/socom/util/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".apk.tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 564
    invoke-static {}, Lcom/umeng/socom/DeviceConfig;->isSdCardWrittenable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 565
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->c:Ljava/lang/String;

    invoke-direct {v0, v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v8, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    move-object v4, v0

    .line 575
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "saveAPK: url = %1$15s\t|\tfilename = %2$15s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 576
    iget-object v6, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v6, v6, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    .line 575
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v1, v1, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 579
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 580
    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 581
    const-string v1, "Accept-Encoding"

    const-string v3, "identity"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string v1, "Connection"

    const-string v3, "keep-alive"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 584
    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 586
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v1, v5, v9

    if-lez v1, :cond_0

    .line 588
    const-string v1, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "bytes="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 591
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_22
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    move-result-object v9

    .line 593
    if-nez p1, :cond_1

    .line 594
    const-wide/16 v1, 0x0

    :try_start_2
    iput-wide v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    .line 595
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    .line 596
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getContentLength: %1$15s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v5, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_1
    const/16 v0, 0x1000

    new-array v5, v0, [B

    .line 600
    const/4 v0, 0x0

    .line 602
    const/16 v6, 0x32

    .line 603
    const/4 v1, 0x1

    .line 605
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v2

    .line 606
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v7, v7, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "saveAPK getContentLength "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 607
    iget-wide v10, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 606
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    invoke-static {v2, v3}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/socom/net/c;->a(Landroid/content/Context;)Lcom/umeng/socom/net/c;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v3, v3, Lcom/umeng/socom/net/a$a;->a:Ljava/lang/String;

    .line 610
    iget-object v7, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v7, v7, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    .line 609
    invoke-virtual {v2, v3, v7}, Lcom/umeng/socom/net/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 612
    :goto_1
    iget v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->g:I

    if-gez v2, :cond_2

    invoke-virtual {v9, v5}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_6

    :cond_2
    move v0, v1

    .line 657
    :goto_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 658
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 660
    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->g:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    .line 662
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/DownloadingService$d;

    .line 663
    iget-object v1, v0, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    aput-wide v3, v1, v2

    .line 664
    iget-object v1, v0, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    const/4 v2, 0x1

    iget-wide v3, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    aput-wide v3, v1, v2

    .line 665
    iget-object v0, v0, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    const/4 v1, 0x2

    iget v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    int-to-long v2, v2

    aput-wide v2, v0, v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_23
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 770
    if-eqz v9, :cond_3

    .line 771
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 777
    :cond_3
    if-eqz v8, :cond_4

    .line 778
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 785
    :cond_4
    :goto_3
    return-void

    .line 568
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->c:Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    .line 570
    const v4, 0x8003

    .line 569
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_15
    .catchall {:try_start_5 .. :try_end_5} :catchall_9

    move-result-object v1

    .line 572
    :try_start_6
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_21
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    move-result-object v0

    move-object v4, v0

    move-object v8, v1

    goto/16 :goto_0

    .line 613
    :cond_6
    const/4 v3, 0x0

    :try_start_7
    invoke-virtual {v8, v5, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 614
    iget-wide v10, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    int-to-long v2, v2

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    .line 615
    add-int/lit8 v3, v0, 0x1

    rem-int/2addr v0, v6

    if-nez v0, :cond_a

    .line 616
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socom/DeviceConfig;->isOnline(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 617
    const/4 v0, 0x0

    .line 618
    goto :goto_2

    .line 628
    :cond_7
    iget-wide v10, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    long-to-float v0, v10

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v0, v2

    iget-wide v10, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    long-to-float v2, v10

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 629
    const/16 v2, 0x64

    if-le v0, v2, :cond_22

    .line 630
    const/16 v0, 0x63

    move v2, v0

    .line 636
    :goto_4
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    if-eqz v0, :cond_8

    .line 637
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    iget v7, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-interface {v0, v7, v2}, Lcom/umeng/socom/net/DownloadingService$a;->a(II)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_23
    .catchall {:try_start_7 .. :try_end_7} :catchall_c

    .line 642
    :cond_8
    :try_start_8
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v7, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 643
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v7, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 644
    const/4 v7, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static {v7, v10, v2, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    .line 643
    invoke-virtual {v0, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_8
    .catch Landroid/os/DeadObjectException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_23
    .catchall {:try_start_8 .. :try_end_8} :catchall_c

    .line 653
    :cond_9
    :goto_5
    :try_start_9
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socom/net/c;->a(Landroid/content/Context;)Lcom/umeng/socom/net/c;

    move-result-object v0

    .line 654
    iget-object v7, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v7, v7, Lcom/umeng/socom/net/a$a;->a:Ljava/lang/String;

    iget-object v10, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v10, v10, Lcom/umeng/socom/net/a$a;->c:Ljava/lang/String;

    .line 653
    invoke-virtual {v0, v7, v10, v2}, Lcom/umeng/socom/net/c;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_a
    move v0, v3

    goto/16 :goto_1

    .line 646
    :catch_0
    move-exception v0

    .line 647
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    .line 649
    const-string v7, "Service Client for downloading %1$15s is dead. Removing messenger from the service"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 650
    iget-object v12, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v12, v12, Lcom/umeng/socom/net/a$a;->b:Ljava/lang/String;

    aput-object v12, v10, v11

    .line 648
    invoke-static {v7, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 647
    invoke-static {v0, v7}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v7, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    const/4 v10, 0x0

    invoke-interface {v0, v7, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_23
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    goto :goto_5

    .line 708
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v3, v9

    .line 709
    :goto_6
    :try_start_a
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 710
    iget v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    const/4 v4, 0x3

    if-le v0, v4, :cond_1a

    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-boolean v0, v0, Lcom/umeng/socom/net/a$a;->e:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-nez v0, :cond_1a

    .line 712
    :try_start_b
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Download Fail out of max repeat count"

    invoke-static {v0, v4}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 714
    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v4

    .line 713
    invoke-virtual {v0, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_10
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 718
    :try_start_c
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    iget v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-static {v0, v4}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;I)V

    .line 719
    invoke-direct {p0, v1}, Lcom/umeng/socom/net/DownloadingService$b;->a(Ljava/lang/Exception;)V

    .line 720
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/socom/net/DownloadingService;->c(Lcom/umeng/socom/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/socom/net/j;

    invoke-direct {v1, p0}, Lcom/umeng/socom/net/j;-><init>(Lcom/umeng/socom/net/DownloadingService$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 770
    :goto_7
    if-eqz v3, :cond_b

    .line 771
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_12
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 777
    :cond_b
    if-eqz v2, :cond_4

    .line 778
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_3

    .line 780
    :catch_2
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 773
    :catch_3
    move-exception v0

    .line 774
    :try_start_f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 777
    if-eqz v8, :cond_4

    .line 778
    :try_start_10
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_3

    .line 780
    :catch_4
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 775
    :catchall_0
    move-exception v0

    .line 777
    if-eqz v8, :cond_c

    .line 778
    :try_start_11
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 783
    :cond_c
    :goto_8
    throw v0

    .line 780
    :catch_5
    move-exception v1

    .line 781
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 780
    :catch_6
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 667
    :cond_d
    :try_start_12
    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->g:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    .line 669
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-wide v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    iget-wide v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    iget v6, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;Lcom/umeng/socom/net/a$a;JJJ)V

    .line 670
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/socom/net/DownloadingService;->b(Lcom/umeng/socom/net/DownloadingService;)Landroid/app/NotificationManager;

    move-result-object v0

    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_23
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    .line 770
    if-eqz v9, :cond_e

    .line 771
    :try_start_13
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 777
    :cond_e
    if-eqz v8, :cond_4

    .line 778
    :try_start_14
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_7

    goto/16 :goto_3

    .line 780
    :catch_7
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 773
    :catch_8
    move-exception v0

    .line 774
    :try_start_15
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 777
    if-eqz v8, :cond_4

    .line 778
    :try_start_16
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    goto/16 :goto_3

    .line 780
    :catch_9
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 775
    :catchall_1
    move-exception v0

    .line 777
    if-eqz v8, :cond_f

    .line 778
    :try_start_17
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_a

    .line 783
    :cond_f
    :goto_9
    throw v0

    .line 780
    :catch_a
    move-exception v1

    .line 781
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 674
    :cond_10
    if-nez v0, :cond_14

    .line 675
    :try_start_18
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download Fail repeat count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 677
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    .line 676
    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 678
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-static {v0, v1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;I)V

    .line 679
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    if-eqz v0, :cond_11

    .line 680
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socom/net/DownloadingService$a;->a(ILjava/lang/Exception;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_23
    .catchall {:try_start_18 .. :try_end_18} :catchall_c

    .line 770
    :cond_11
    if-eqz v9, :cond_12

    .line 771
    :try_start_19
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    .line 777
    :cond_12
    if-eqz v8, :cond_4

    .line 778
    :try_start_1a
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_b

    goto/16 :goto_3

    .line 780
    :catch_b
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 773
    :catch_c
    move-exception v0

    .line 774
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 777
    if-eqz v8, :cond_4

    .line 778
    :try_start_1c
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_d

    goto/16 :goto_3

    .line 780
    :catch_d
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 775
    :catchall_2
    move-exception v0

    .line 777
    if-eqz v8, :cond_13

    .line 778
    :try_start_1d
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_e

    .line 783
    :cond_13
    :goto_a
    throw v0

    .line 780
    :catch_e
    move-exception v1

    .line 781
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 685
    :cond_14
    :try_start_1e
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v0, v0, Lcom/umeng/socom/net/a$a;->d:[Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 686
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 687
    const-string v1, "dsize"

    iget-wide v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    invoke-static {}, Lcom/umeng/socom/util/g;->a()Ljava/lang/String;

    move-result-object v1

    .line 691
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .line 692
    const-string v2, "dtime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    const-string v1, "ptimes"

    iget v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    const/4 v1, 0x1

    .line 697
    iget-object v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-object v2, v2, Lcom/umeng/socom/net/a$a;->d:[Ljava/lang/String;

    .line 696
    invoke-static {v0, v1, v2}, Lcom/umeng/socom/net/DownloadingService;->a(Ljava/util/Map;Z[Ljava/lang/String;)V

    .line 700
    :cond_15
    new-instance v0, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".tmp"

    const-string v5, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 702
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 704
    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    if-eqz v1, :cond_16

    .line 705
    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    iget v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-interface {v1, v2, v0}, Lcom/umeng/socom/net/DownloadingService$a;->a(ILjava/lang/String;)V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_23
    .catchall {:try_start_1e .. :try_end_1e} :catchall_c

    .line 770
    :cond_16
    if-eqz v9, :cond_17

    .line 771
    :try_start_1f
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_1e
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 777
    :cond_17
    if-eqz v8, :cond_4

    .line 778
    :try_start_20
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_f

    goto/16 :goto_3

    .line 780
    :catch_f
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 715
    :catch_10
    move-exception v0

    .line 716
    :try_start_21
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_4

    .line 718
    :try_start_22
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    iget v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-static {v0, v4}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;I)V

    .line 719
    invoke-direct {p0, v1}, Lcom/umeng/socom/net/DownloadingService$b;->a(Ljava/lang/Exception;)V

    .line 720
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v0}, Lcom/umeng/socom/net/DownloadingService;->c(Lcom/umeng/socom/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/umeng/socom/net/j;

    invoke-direct {v1, p0}, Lcom/umeng/socom/net/j;-><init>(Lcom/umeng/socom/net/DownloadingService$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    goto/16 :goto_7

    .line 768
    :catchall_3
    move-exception v0

    move-object v8, v2

    move-object v9, v3

    .line 770
    :goto_b
    if-eqz v9, :cond_18

    .line 771
    :try_start_23
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1a
    .catchall {:try_start_23 .. :try_end_23} :catchall_7

    .line 777
    :cond_18
    if-eqz v8, :cond_19

    .line 778
    :try_start_24
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1d

    .line 784
    :cond_19
    :goto_c
    throw v0

    .line 717
    :catchall_4
    move-exception v0

    .line 718
    :try_start_25
    iget-object v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    iget v5, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-static {v4, v5}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;I)V

    .line 719
    invoke-direct {p0, v1}, Lcom/umeng/socom/net/DownloadingService$b;->a(Ljava/lang/Exception;)V

    .line 720
    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-static {v1}, Lcom/umeng/socom/net/DownloadingService;->c(Lcom/umeng/socom/net/DownloadingService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/umeng/socom/net/j;

    invoke-direct {v4, p0}, Lcom/umeng/socom/net/j;-><init>(Lcom/umeng/socom/net/DownloadingService$b;)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 728
    throw v0

    .line 732
    :cond_1a
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "wait for repeating Test network repeat count="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    .line 734
    :try_start_26
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->j:Lcom/umeng/socom/net/a$a;

    iget-boolean v0, v0, Lcom/umeng/socom/net/a$a;->e:Z

    if-nez v0, :cond_1c

    .line 735
    const-wide/16 v0, 0x1f40

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 736
    iget-wide v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    const-wide/16 v4, 0x1

    cmp-long v0, v0, v4

    if-gez v0, :cond_1b

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/umeng/socom/net/DownloadingService$b;->a(Z)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_26} :catch_11
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    goto/16 :goto_7

    .line 760
    :catch_11
    move-exception v0

    .line 761
    :try_start_27
    invoke-direct {p0, v0}, Lcom/umeng/socom/net/DownloadingService$b;->a(Ljava/lang/Exception;)V

    .line 762
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-static {v0, v1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;I)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    goto/16 :goto_7

    .line 740
    :cond_1b
    const/4 v0, 0x1

    :try_start_28
    invoke-direct {p0, v0}, Lcom/umeng/socom/net/DownloadingService$b;->a(Z)V

    goto/16 :goto_7

    .line 744
    :cond_1c
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->c()Ljava/util/Map;

    move-result-object v0

    iget v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socom/net/DownloadingService$d;

    .line 745
    iget-object v1, v0, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    aput-wide v5, v1, v4

    .line 746
    iget-object v1, v0, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/umeng/socom/net/DownloadingService$b;->f:J

    aput-wide v5, v1, v4

    .line 747
    iget-object v0, v0, Lcom/umeng/socom/net/DownloadingService$d;->f:[J

    const/4 v1, 0x2

    iget v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    int-to-long v4, v4

    aput-wide v4, v0, v1

    .line 750
    iget v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    .line 751
    const-string v1, "continue"

    .line 750
    invoke-static {v0, v1}, Lcom/umeng/socom/net/l;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 752
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    const-class v5, Lcom/umeng/socom/net/DownloadingService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 753
    const-string v4, "com.umeng.broadcast.download.msg"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 754
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    iget-object v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v0, v4, v1}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;Landroid/content/Context;Landroid/content/Intent;)Z

    .line 756
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/socom/net/DownloadingService$b;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/umeng/socom/b;->a(Landroid/content/Context;)Lcom/umeng/socom/b;

    move-result-object v4

    .line 757
    const-string v5, "Download_info_interrupt"

    .line 756
    invoke-virtual {v4, v5}, Lcom/umeng/socom/b;->f(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socom/net/DownloadingService;->a(Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "changed play state button on op-notification."

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_28} :catch_11
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    goto/16 :goto_7

    .line 773
    :catch_12
    move-exception v0

    .line 774
    :try_start_29
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_5

    .line 777
    if-eqz v2, :cond_4

    .line 778
    :try_start_2a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_13

    goto/16 :goto_3

    .line 780
    :catch_13
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 775
    :catchall_5
    move-exception v0

    .line 777
    if-eqz v2, :cond_1d

    .line 778
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_14

    .line 783
    :cond_1d
    :goto_d
    throw v0

    .line 780
    :catch_14
    move-exception v1

    .line 781
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 765
    :catch_15
    move-exception v0

    move-object v8, v1

    move-object v9, v2

    .line 766
    :goto_e
    :try_start_2c
    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    iget v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-static {v1, v2}, Lcom/umeng/socom/net/DownloadingService;->a(Lcom/umeng/socom/net/DownloadingService;I)V

    .line 767
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_c

    .line 770
    if-eqz v9, :cond_1e

    .line 771
    :try_start_2d
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_17
    .catchall {:try_start_2d .. :try_end_2d} :catchall_6

    .line 777
    :cond_1e
    if-eqz v8, :cond_4

    .line 778
    :try_start_2e
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_16

    goto/16 :goto_3

    .line 780
    :catch_16
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 773
    :catch_17
    move-exception v0

    .line 774
    :try_start_2f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_6

    .line 777
    if-eqz v8, :cond_4

    .line 778
    :try_start_30
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_18

    goto/16 :goto_3

    .line 780
    :catch_18
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 775
    :catchall_6
    move-exception v0

    .line 777
    if-eqz v8, :cond_1f

    .line 778
    :try_start_31
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_19

    .line 783
    :cond_1f
    :goto_f
    throw v0

    .line 780
    :catch_19
    move-exception v1

    .line 781
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 773
    :catch_1a
    move-exception v1

    .line 774
    :try_start_32
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_7

    .line 777
    if-eqz v8, :cond_19

    .line 778
    :try_start_33
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_1b

    goto/16 :goto_c

    .line 780
    :catch_1b
    move-exception v1

    .line 781
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 775
    :catchall_7
    move-exception v0

    .line 777
    if-eqz v8, :cond_20

    .line 778
    :try_start_34
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1c

    .line 783
    :cond_20
    :goto_10
    throw v0

    .line 780
    :catch_1c
    move-exception v1

    .line 781
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 780
    :catch_1d
    move-exception v1

    .line 781
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 773
    :catch_1e
    move-exception v0

    .line 774
    :try_start_35
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_8

    .line 777
    if-eqz v8, :cond_4

    .line 778
    :try_start_36
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_1f

    goto/16 :goto_3

    .line 780
    :catch_1f
    move-exception v0

    .line 781
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 775
    :catchall_8
    move-exception v0

    .line 777
    if-eqz v8, :cond_21

    .line 778
    :try_start_37
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_20

    .line 783
    :cond_21
    :goto_11
    throw v0

    .line 780
    :catch_20
    move-exception v1

    .line 781
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 768
    :catchall_9
    move-exception v0

    move-object v8, v1

    move-object v9, v2

    goto/16 :goto_b

    :catchall_a
    move-exception v0

    move-object v8, v1

    move-object v9, v2

    goto/16 :goto_b

    :catchall_b
    move-exception v0

    move-object v9, v2

    goto/16 :goto_b

    :catchall_c
    move-exception v0

    goto/16 :goto_b

    .line 765
    :catch_21
    move-exception v0

    move-object v8, v1

    move-object v9, v2

    goto/16 :goto_e

    :catch_22
    move-exception v0

    move-object v9, v2

    goto/16 :goto_e

    :catch_23
    move-exception v0

    goto/16 :goto_e

    .line 708
    :catch_24
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_6

    :catch_25
    move-exception v0

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_6

    :catch_26
    move-exception v0

    move-object v1, v0

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_6

    :cond_22
    move v2, v0

    goto/16 :goto_4
.end method

.method static synthetic b(Lcom/umeng/socom/net/DownloadingService$b;)Lcom/umeng/socom/net/DownloadingService;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .prologue
    .line 553
    iput p1, p0, Lcom/umeng/socom/net/DownloadingService$b;->g:I

    .line 554
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 527
    iput v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->d:I

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    if-eqz v1, :cond_0

    .line 532
    iget-object v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->i:Lcom/umeng/socom/net/DownloadingService$a;

    iget v2, p0, Lcom/umeng/socom/net/DownloadingService$b;->h:I

    invoke-interface {v1, v2}, Lcom/umeng/socom/net/DownloadingService$a;->a(I)V

    .line 534
    :cond_0
    iget-wide v1, p0, Lcom/umeng/socom/net/DownloadingService$b;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, v0}, Lcom/umeng/socom/net/DownloadingService$b;->a(Z)V

    .line 537
    invoke-static {}, Lcom/umeng/socom/net/DownloadingService;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/umeng/socom/net/DownloadingService$b;->a:Lcom/umeng/socom/net/DownloadingService;

    invoke-virtual {v0}, Lcom/umeng/socom/net/DownloadingService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_2
    :goto_0
    return-void

    .line 540
    :catch_0
    move-exception v0

    .line 541
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
