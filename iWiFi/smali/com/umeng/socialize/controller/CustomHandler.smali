.class public abstract Lcom/umeng/socialize/controller/CustomHandler;
.super Lcom/umeng/socialize/controller/UMSsoHandler;
.source "CustomHandler.java"


# static fields
.field protected static mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

.field protected static mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected isToCircle:Z

.field protected mAppId:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mDescriptionLimit:I

.field protected mGrayIcon:I

.field protected mIcon:I

.field protected mKeyWord:Ljava/lang/String;

.field protected mPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

.field protected mPlatformClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

.field protected mPlatformOpId:I

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field protected mShareContent:Ljava/lang/String;

.field protected mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

.field protected mShowWord:Ljava/lang/String;

.field protected mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

.field protected mThumbLimit:I

.field protected mThumbSize:I

.field protected mTitle:Ljava/lang/String;

.field protected mTitleLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 66
    sput-object v0, Lcom/umeng/socialize/controller/CustomHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 121
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/controller/CustomHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/controller/CustomHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMSsoHandler;-><init>()V

    .line 47
    iput-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 57
    iput-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 61
    iput-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mAppId:Ljava/lang/String;

    .line 76
    iput v2, p0, Lcom/umeng/socialize/controller/CustomHandler;->mIcon:I

    .line 78
    iput v2, p0, Lcom/umeng/socialize/controller/CustomHandler;->mGrayIcon:I

    .line 83
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mKeyWord:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShowWord:Ljava/lang/String;

    .line 90
    iput-boolean v2, p0, Lcom/umeng/socialize/controller/CustomHandler;->isToCircle:Z

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mTitle:Ljava/lang/String;

    .line 94
    const/16 v0, 0x200

    iput v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mTitleLimit:I

    .line 96
    iput-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatformClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    .line 101
    const/16 v0, 0x96

    iput v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mThumbSize:I

    .line 103
    const v0, 0x8000

    iput v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mThumbLimit:I

    .line 107
    const/16 v0, 0x400

    iput v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mDescriptionLimit:I

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->TAG:Ljava/lang/String;

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatformOpId:I

    .line 137
    iput-object p1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mContext:Landroid/content/Context;

    .line 138
    iput-object p2, p0, Lcom/umeng/socialize/controller/CustomHandler;->mAppId:Ljava/lang/String;

    .line 139
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 140
    iput-boolean p3, p0, Lcom/umeng/socialize/controller/CustomHandler;->isToCircle:Z

    .line 141
    return-void
.end method


# virtual methods
.method public addToSocialSDK()V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {p0}, Lcom/umeng/socialize/controller/CustomHandler;->build()Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 265
    return-void
.end method

.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method protected build()Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/CustomHandler;->initPlatformConfig()V

    .line 229
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/CustomHandler;->createCustomPlatform()Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v0

    return-object v0
.end method

.method protected abstract buildMediaObject(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;
.end method

.method protected buildTransaction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 699
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected compressBitmap([B)[B
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 590
    .line 591
    if-eqz p1, :cond_2

    array-length v2, p1

    iget v3, p0, Lcom/umeng/socialize/controller/CustomHandler;->mThumbLimit:I

    if-lt v2, v3, :cond_2

    .line 592
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 595
    array-length v2, p1

    .line 594
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    move v2, v0

    move v0, v1

    .line 600
    :goto_0
    if-nez v2, :cond_0

    const/16 v5, 0xa

    if-le v0, v5, :cond_3

    .line 615
    :cond_0
    if-eqz v3, :cond_2

    .line 616
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 617
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 618
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 621
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### \u5206\u4eab"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShowWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7684\u7f29\u7565\u56fe\u5927\u5c0f : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 622
    array-length v2, p1

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " KB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 621
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    array-length v0, p1

    if-nez v0, :cond_2

    .line 624
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->TAG:Ljava/lang/String;

    const-string v1, "### \u7f29\u7565\u56fe\u7684\u539f\u56fe\u592a\u5927,\u8bf7\u8bbe\u7f6e\u5c0f\u4e8e64KB\u7684\u7f29\u7565\u56fe"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_2
    return-object p1

    .line 601
    :cond_3
    const-wide v5, 0x3fe999999999999aL    # 0.8

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 602
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 603
    iget-object v6, p0, Lcom/umeng/socialize/controller/CustomHandler;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "quality = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v6, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 605
    iget-object v5, p0, Lcom/umeng/socialize/controller/CustomHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Thumb Size = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    .line 606
    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 605
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    iget v6, p0, Lcom/umeng/socialize/controller/CustomHandler;->mThumbLimit:I

    if-ge v5, v6, :cond_4

    move v2, v1

    .line 609
    goto/16 :goto_0

    .line 610
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 611
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method protected createCustomPlatform()Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 4

    .prologue
    .line 239
    new-instance v0, Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mKeyWord:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShowWord:Ljava/lang/String;

    iget v3, p0, Lcom/umeng/socialize/controller/CustomHandler;->mIcon:I

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 240
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iget v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mGrayIcon:I

    iput v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mGrayIcon:I

    .line 241
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    new-instance v1, Lcom/umeng/socialize/controller/e;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/controller/e;-><init>(Lcom/umeng/socialize/controller/CustomHandler;)V

    iput-object v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    .line 257
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    return-object v0
.end method

.method protected createMessage(Lcom/umeng/socialize/media/UMediaObject$MediaType;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 382
    const/4 v0, 0x0

    .line 383
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_1

    .line 385
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/controller/CustomHandler;->getShareImage(Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;

    move-result-object v0

    .line 399
    :cond_0
    :goto_0
    return-object v0

    .line 386
    :cond_1
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_2

    .line 388
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iget-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/controller/CustomHandler;->getShareMusic(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_2
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_3

    .line 391
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/controller/CustomHandler;->getShareText(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_3
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT_IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_4

    .line 394
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/controller/CustomHandler;->getShareTextAndImage(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 395
    :cond_4
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_0

    .line 397
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iget-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/controller/CustomHandler;->getShareVideo(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected createThumb(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 433
    const/4 v0, 0x0

    .line 434
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 436
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 437
    const/high16 v0, 0x3f800000    # 1.0f

    .line 438
    if-lt v1, v3, :cond_0

    if-ge v2, v3, :cond_1

    .line 439
    :cond_0
    if-ge v1, v2, :cond_2

    .line 441
    int-to-float v0, v1

    div-float v0, p2, v0

    .line 448
    :cond_1
    :goto_0
    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 449
    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x1

    .line 448
    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 455
    if-nez v0, :cond_3

    .line 460
    :goto_1
    return-object p1

    .line 444
    :cond_2
    int-to-float v0, v2

    div-float v0, p2, v0

    goto :goto_0

    :cond_3
    move-object p1, v0

    goto :goto_1

    :cond_4
    move-object p1, v0

    goto :goto_1
.end method

.method protected abstract doShare(Ljava/lang/Object;Lcom/umeng/socialize/media/UMediaObject$MediaType;)Z
.end method

.method protected fireAllListenersOnComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 3

    .prologue
    .line 727
    sget-object v0, Lcom/umeng/socialize/controller/CustomHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 728
    sget-object v0, Lcom/umeng/socialize/controller/CustomHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v1, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v0, p1, p2, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 732
    sget-object v2, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 731
    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 733
    return-void
.end method

.method protected fireAllListenersOnStart()V
    .locals 2

    .prologue
    .line 715
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 716
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method protected getMediaType(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 2

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    if-eqz p1, :cond_1

    .line 326
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    .line 327
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v0, v1, :cond_0

    .line 328
    iget-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT_IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 336
    :cond_0
    :goto_0
    return-object v0

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    goto :goto_0
.end method

.method public getPlatformClickListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatformClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    return-object v0
.end method

.method protected abstract getShareImage(Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
.end method

.method protected getShareMsg(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 2

    .prologue
    .line 346
    if-eqz p1, :cond_0

    .line 347
    sput-object p1, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 349
    sget-object v0, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/bean/ShareType;->SHAKE:Lcom/umeng/socialize/bean/ShareType;

    if-ne v0, v1, :cond_1

    .line 350
    sget-object v0, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    iget-object v0, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    .line 351
    sget-object v0, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    sget-object v0, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    .line 354
    sget-object v0, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    goto :goto_0
.end method

.method protected abstract getShareMusic(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract getShareText(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected abstract getShareTextAndImage(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
.end method

.method protected abstract getShareVideo(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected getThumbByteArray(Lcom/umeng/socialize/media/UMediaObject;)[B
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 641
    if-nez p1, :cond_0

    .line 683
    :goto_0
    return-object v1

    .line 646
    :cond_0
    const-string v0, ""

    .line 647
    instance-of v2, p1, Lcom/umeng/socialize/media/UMusic;

    if-eqz v2, :cond_4

    .line 648
    check-cast p1, Lcom/umeng/socialize/media/UMusic;

    .line 649
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 650
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    .line 669
    :cond_1
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 671
    iget v2, p0, Lcom/umeng/socialize/controller/CustomHandler;->mThumbSize:I

    iget v3, p0, Lcom/umeng/socialize/controller/CustomHandler;->mThumbSize:I

    .line 670
    invoke-static {v0, v2, v3}, Lcom/umeng/socom/util/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_8

    .line 673
    invoke-static {v0}, Lcom/umeng/socom/util/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 674
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    move-object v0, v1

    .line 679
    :goto_2
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    :cond_2
    if-eqz p1, :cond_3

    .line 680
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v0

    :cond_3
    move-object v1, v0

    .line 683
    goto :goto_0

    .line 651
    :cond_4
    instance-of v2, p1, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v2, :cond_5

    .line 652
    check-cast p1, Lcom/umeng/socialize/media/UMVideo;

    .line 653
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMVideo;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 654
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    goto :goto_1

    .line 655
    :cond_5
    instance-of v2, p1, Lcom/umeng/socialize/media/UMWebPage;

    if-eqz v2, :cond_6

    .line 656
    check-cast p1, Lcom/umeng/socialize/media/UMWebPage;

    .line 657
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMWebPage;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMWebPage;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    goto :goto_1

    .line 659
    :cond_6
    instance-of v2, p1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v2, :cond_9

    .line 660
    check-cast p1, Lcom/umeng/socialize/media/UMImage;

    .line 661
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getThumb()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 662
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getThumb()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 663
    :cond_7
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 664
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v1

    goto :goto_2

    :cond_9
    move-object p1, v1

    goto :goto_1
.end method

.method protected handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 3

    .prologue
    .line 277
    sput-object p3, Lcom/umeng/socialize/controller/CustomHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 279
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/CustomHandler;->setSelectedPlatform()V

    .line 281
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/controller/CustomHandler;->getShareMsg(Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 283
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 287
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/CustomHandler;->listenerCallback(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 289
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/controller/CustomHandler;->buildMediaObject(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 291
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/controller/CustomHandler;->shareTo(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 296
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u8bbe\u7f6e"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v2, v2, Lcom/umeng/socialize/bean/CustomPlatform;->mShowWord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7684\u5206\u4eab\u5185\u5bb9..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    const/4 v2, 0x0

    .line 293
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected haveCallback(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract initPlatformConfig()V
.end method

.method public abstract isClientInstalled()Z
.end method

.method public isToCircle()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->isToCircle:Z

    return v0
.end method

.method protected listenerCallback(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatformClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatformClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;->onClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 369
    :cond_0
    if-eqz p3, :cond_1

    .line 370
    invoke-interface {p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/CustomHandler;->fireAllListenersOnStart()V

    .line 373
    return-void
.end method

.method protected sendReport(Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 551
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    .line 552
    const/4 v0, -0x1

    .line 553
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 555
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    iget-object v3, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareContent:Ljava/lang/String;

    .line 556
    iget-object v4, p0, Lcom/umeng/socialize/controller/CustomHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v5

    .line 555
    invoke-static {v0, v2, v3, v4, v5}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mContext:Landroid/content/Context;

    .line 559
    iget v2, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatformOpId:I

    .line 558
    invoke-static {v0, v1, v2}, Lcom/umeng/socom/util/StatisticsDataUtils;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 560
    const/16 v0, 0xc8

    .line 563
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/CustomHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/umeng/socialize/controller/CustomHandler;->haveCallback(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 565
    sget-object v2, Lcom/umeng/socialize/controller/CustomHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {p0, v1, v0, v2}, Lcom/umeng/socialize/controller/CustomHandler;->fireAllListenersOnComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 568
    :cond_1
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mAppId:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public setPlatformClickListener(Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatformClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    .line 203
    return-void
.end method

.method protected setPlatformOpId(I)V
    .locals 0

    .prologue
    .line 211
    iput p1, p0, Lcom/umeng/socialize/controller/CustomHandler;->mPlatformOpId:I

    .line 212
    return-void
.end method

.method protected abstract setSelectedPlatform()V
.end method

.method public setToCircle(Z)V
    .locals 0

    .prologue
    .line 183
    iput-boolean p1, p0, Lcom/umeng/socialize/controller/CustomHandler;->isToCircle:Z

    .line 184
    return-void
.end method

.method protected abstract shareAsync(Lcom/umeng/socialize/media/UMediaObject$MediaType;)V
.end method

.method protected shareTo(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 3

    .prologue
    .line 306
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/controller/CustomHandler;->getMediaType(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/controller/CustomHandler;->shareAsync(Lcom/umeng/socialize/media/UMediaObject$MediaType;)V

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->mContext:Landroid/content/Context;

    const-string v1, "\u8bf7\u8bbe\u7f6e\u5206\u4eab\u5185\u5bb9..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 311
    iget-object v0, p0, Lcom/umeng/socialize/controller/CustomHandler;->TAG:Ljava/lang/String;

    const-string v1, "\u60a8\u8bbe\u7f6e\u7684\u5206\u4eab\u5185\u5bb9\u4e3a\u7a7a,\u5206\u4eab\u5185\u5bb9\u53ea\u652f\u6301\u6587\u5b57\u3001\u56fe\u7247\uff0c\u56fe\u6587\u3001\u97f3\u4e50\u3001\u89c6\u9891\u3001\u7f51\u9875\u7c7b\u578b..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
