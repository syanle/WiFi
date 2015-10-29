.class public Lcom/umeng/socialize/common/SocialResHelper$a;
.super Ljava/lang/Object;
.source "SocialResHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/socialize/common/SocialResHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static synthetic j:[I


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/ImageView;

.field c:Ljava/lang/String;

.field d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

.field e:I

.field f:Landroid/view/animation/Animation;

.field g:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

.field h:Z

.field i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->e:I

    .line 286
    sget-object v0, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ELSE_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    iput-object v0, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->g:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    .line 287
    iput-boolean v1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->h:Z

    .line 288
    iput-boolean v1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->i:Z

    .line 294
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 295
    invoke-static {p3}, Lcom/umeng/socom/util/g;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iput-object p1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->a:Landroid/content/Context;

    .line 299
    iput-object p2, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->b:Landroid/widget/ImageView;

    .line 300
    iput-object p3, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;Landroid/view/animation/Animation;ZI)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 501
    if-eqz p3, :cond_0

    if-nez p2, :cond_4

    .line 502
    :cond_0
    if-eqz p2, :cond_1

    if-lez p8, :cond_1

    .line 503
    invoke-virtual {p2, p8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 505
    :cond_1
    if-eqz p5, :cond_2

    .line 506
    sget-object v0, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    invoke-interface {p5, v0, v1, p3}, Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;->a(Lcom/umeng/socom/net/o$a;Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    .line 508
    :cond_2
    invoke-static {}, Lcom/umeng/socialize/common/SocialResHelper;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bind drawable failed. drawable ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  imageView[+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 509
    const-string v2, "+]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_3
    :goto_0
    return-void

    .line 513
    :cond_4
    if-eqz p7, :cond_5

    .line 514
    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 515
    invoke-static {v0}, Lcom/umeng/socialize/common/SocialResHelper;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 516
    new-instance p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 519
    :cond_5
    if-eqz p4, :cond_7

    .line 520
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 525
    :goto_1
    if-eqz p6, :cond_6

    .line 526
    invoke-virtual {p2, p6}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 531
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/umeng/socialize/common/SocialResHelper;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 535
    :goto_2
    if-eqz p5, :cond_3

    .line 536
    sget-object v1, Lcom/umeng/socom/net/o$a;->a:Lcom/umeng/socom/net/o$a;

    invoke-interface {p5, v1, v0, p3}, Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;->a(Lcom/umeng/socom/net/o$a;Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 522
    :cond_7
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_2
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 9

    .prologue
    .line 434
    if-nez p1, :cond_0

    .line 435
    new-instance v0, Lcom/umeng/socialize/common/b;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/common/b;-><init>(Lcom/umeng/socialize/common/SocialResHelper$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    .line 491
    invoke-virtual {v0, v1}, Lcom/umeng/socialize/common/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 496
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->b:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->i:Z

    iget-object v5, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    iget-object v6, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->f:Landroid/view/animation/Animation;

    .line 494
    iget-boolean v7, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->h:Z

    iget v8, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->e:I

    move-object v0, p0

    move-object v3, p1

    .line 493
    invoke-direct/range {v0 .. v8}, Lcom/umeng/socialize/common/SocialResHelper$a;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;Landroid/view/animation/Animation;ZI)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/common/SocialResHelper$a;Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;Landroid/view/animation/Animation;ZI)V
    .locals 0

    .prologue
    .line 498
    invoke-direct/range {p0 .. p8}, Lcom/umeng/socialize/common/SocialResHelper$a;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;Landroid/view/animation/Animation;ZI)V

    return-void
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 279
    sget-object v0, Lcom/umeng/socialize/common/SocialResHelper$a;->j:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->values()[Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ELSE_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v1}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ONLY:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v1}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_NETWORK_ELSE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v1}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/umeng/socialize/common/SocialResHelper$a;->j:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(I)Lcom/umeng/socialize/common/SocialResHelper$a;
    .locals 0

    .prologue
    .line 359
    iput p1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->e:I

    .line 360
    return-object p0
.end method

.method public a(Landroid/view/animation/Animation;)Lcom/umeng/socialize/common/SocialResHelper$a;
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->f:Landroid/view/animation/Animation;

    .line 326
    return-object p0
.end method

.method public a(Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;)Lcom/umeng/socialize/common/SocialResHelper$a;
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    .line 313
    return-object p0
.end method

.method public a(Lcom/umeng/socialize/common/SocialResHelper$LoadMode;)Lcom/umeng/socialize/common/SocialResHelper$a;
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->g:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    .line 373
    return-object p0
.end method

.method public a(Z)Lcom/umeng/socialize/common/SocialResHelper$a;
    .locals 0

    .prologue
    .line 337
    iput-boolean p1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->h:Z

    .line 338
    return-object p0
.end method

.method public a()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 380
    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->c:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/umeng/socialize/common/SocialResHelper;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 390
    :goto_0
    invoke-static {}, Lcom/umeng/socialize/common/SocialResHelper$a;->b()[I

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->g:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-virtual {v3}, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 431
    :goto_1
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    invoke-static {}, Lcom/umeng/socialize/common/SocialResHelper;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "can\'t get from cache."

    invoke-static {v2, v3, v0}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 385
    iget-object v0, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    sget-object v2, Lcom/umeng/socom/net/o$a;->b:Lcom/umeng/socom/net/o$a;

    invoke-interface {v0, v2, v1, v1}, Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;->a(Lcom/umeng/socom/net/o$a;Ljava/io/File;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 392
    :pswitch_0
    iget-object v1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    sget-object v2, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ONLY:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-interface {v1, v2}, Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;->a(Lcom/umeng/socialize/common/SocialResHelper$LoadMode;)V

    .line 394
    iget-object v1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    sget-object v2, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->FETCH_FROM_LOCALE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    invoke-interface {v1, v2}, Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;->a(Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;)V

    .line 396
    :cond_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 397
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 398
    if-nez v3, :cond_2

    .line 399
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 401
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->b:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->i:Z

    iget-object v5, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    .line 402
    iget-object v6, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->f:Landroid/view/animation/Animation;

    iget-boolean v7, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->h:Z

    iget v8, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->e:I

    move-object v0, p0

    .line 401
    invoke-direct/range {v0 .. v8}, Lcom/umeng/socialize/common/SocialResHelper$a;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;Landroid/view/animation/Animation;ZI)V

    goto :goto_1

    .line 404
    :cond_3
    invoke-static {}, Lcom/umeng/socialize/common/SocialResHelper;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cache is not exists"

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 408
    :pswitch_1
    iget-object v2, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    if-eqz v2, :cond_4

    .line 409
    iget-object v2, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    sget-object v3, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_CACHE_ELSE_NETWORK:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-interface {v2, v3}, Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;->a(Lcom/umeng/socialize/common/SocialResHelper$LoadMode;)V

    .line 410
    iget-object v2, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    sget-object v3, Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;->FETCH_FROM_LOCALE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;

    invoke-interface {v2, v3}, Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;->a(Lcom/umeng/socialize/common/SocialResHelper$FetchLocale;)V

    .line 412
    :cond_4
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 413
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 414
    if-nez v3, :cond_5

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 417
    :cond_5
    iget-object v1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->b:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->i:Z

    iget-object v5, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    .line 418
    iget-object v6, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->f:Landroid/view/animation/Animation;

    iget-boolean v7, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->h:Z

    iget v8, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->e:I

    move-object v0, p0

    .line 417
    invoke-direct/range {v0 .. v8}, Lcom/umeng/socialize/common/SocialResHelper$a;->a(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZLcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;Landroid/view/animation/Animation;ZI)V

    goto/16 :goto_1

    .line 420
    :cond_6
    invoke-direct {p0, v1}, Lcom/umeng/socialize/common/SocialResHelper$a;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 424
    :pswitch_2
    iget-object v0, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    if-eqz v0, :cond_7

    .line 425
    iget-object v0, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->d:Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;

    sget-object v2, Lcom/umeng/socialize/common/SocialResHelper$LoadMode;->LOAD_NETWORK_ELSE_CACHE:Lcom/umeng/socialize/common/SocialResHelper$LoadMode;

    invoke-interface {v0, v2}, Lcom/umeng/socialize/common/SocialResHelper$BindDrawableListener;->a(Lcom/umeng/socialize/common/SocialResHelper$LoadMode;)V

    .line 427
    :cond_7
    invoke-direct {p0, v1}, Lcom/umeng/socialize/common/SocialResHelper$a;->a(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public b(Z)Lcom/umeng/socialize/common/SocialResHelper$a;
    .locals 0

    .prologue
    .line 348
    iput-boolean p1, p0, Lcom/umeng/socialize/common/SocialResHelper$a;->i:Z

    .line 349
    return-object p0
.end method
