.class public Lcn/sharesdk/sina/weibo/SinaActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;
.implements Lcom/sina/weibo/sdk/auth/WeiboAuthListener;


# static fields
.field private static f:Lcn/sharesdk/framework/Platform$ShareParams;

.field private static g:Lcn/sharesdk/framework/authorize/AuthorizeListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

.field private d:Lcom/sina/weibo/sdk/auth/AuthInfo;

.field private e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)I
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return v1
.end method

.method private a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    :try_start_0
    const-string v0, "bm_tmp"

    const-string v1, ".jpg"

    invoke-static {v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/sharesdk/sina/weibo/SinaActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    :cond_0
    invoke-static {p2}, Lcom/mob/tools/utils/BitmapHelper;->getBmpFormat(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    const/16 v0, 0x78

    invoke-static {p1, v0}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    if-ne v1, v4, :cond_1

    const/16 v0, 0x5a

    invoke-static {p1, v0}, Lcom/mob/tools/utils/R;->dipToPx(Landroid/content/Context;I)I

    move-result v0

    :cond_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v5, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->b:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_5

    move-object v2, v1

    :goto_0
    const/16 v1, 0x28

    if-le v0, v1, :cond_4

    invoke-direct {p0, v2, v4}, Lcn/sharesdk/sina/weibo/SinaActivity;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)I

    move-result v1

    const v3, 0x8000

    if-le v1, v3, :cond_4

    add-int/lit8 v3, v0, -0x5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-gt v6, v3, :cond_2

    if-gt v5, v3, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_1
    int-to-double v7, v5

    mul-double/2addr v7, v0

    double-to-int v5, v7

    int-to-double v6, v6

    mul-double/2addr v0, v6

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-static {v2, v5, v0, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    move v0, v3

    goto :goto_0

    :cond_2
    if-le v6, v5, :cond_3

    int-to-double v0, v3

    int-to-double v7, v6

    div-double/2addr v0, v7

    goto :goto_1

    :cond_3
    int-to-double v0, v3

    int-to-double v7, v5

    div-double/2addr v0, v7

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sina_bm_tmp"

    invoke-static {v1, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x64

    invoke-virtual {v2, v4, v0, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    move-object v0, v2

    :goto_2
    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sina weibo decode bitmap size ==>>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v1, v4}, Lcn/sharesdk/sina/weibo/SinaActivity;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mob/tools/utils/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    move-object v0, v1

    goto :goto_2
.end method

.method private a()V
    .locals 6

    new-instance v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;-><init>()V

    sget-object v1, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->d()Lcom/sina/weibo/sdk/api/TextObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->textObject:Lcom/sina/weibo/sdk/api/TextObject;

    :cond_0
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->c()Lcom/sina/weibo/sdk/api/ImageObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->imageObject:Lcom/sina/weibo/sdk/api/ImageObject;

    :cond_2
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->b()Lcom/sina/weibo/sdk/api/BaseMediaObject;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/WeiboMultiMessage;->mediaObject:Lcom/sina/weibo/sdk/api/BaseMediaObject;

    :cond_3
    new-instance v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;

    invoke-direct {v2}, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->transaction:Ljava/lang/String;

    iput-object v0, v2, Lcom/sina/weibo/sdk/api/share/SendMultiMessageToWeiboRequest;->multiMessage:Lcom/sina/weibo/sdk/api/WeiboMultiMessage;

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    iget-object v3, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->d:Lcom/sina/weibo/sdk/auth/AuthInfo;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->a:Ljava/lang/String;

    move-object v1, p0

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->sendRequest(Landroid/app/Activity;Lcom/sina/weibo/sdk/api/share/BaseRequest;Lcom/sina/weibo/sdk/auth/AuthInfo;Ljava/lang/String;Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)Z

    return-void
.end method

.method public static a(Lcn/sharesdk/framework/Platform$ShareParams;)V
    .locals 0

    sput-object p0, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    return-void
.end method

.method public static a(Lcn/sharesdk/framework/authorize/AuthorizeListener;)V
    .locals 0

    sput-object p0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    return-void
.end method

.method private b()Lcom/sina/weibo/sdk/api/BaseMediaObject;
    .locals 4

    new-instance v1, Lcom/sina/weibo/sdk/api/WebpageObject;

    invoke-direct {v1}, Lcom/sina/weibo/sdk/api/WebpageObject;-><init>()V

    invoke-static {}, Lcom/sina/weibo/sdk/utils/Utility;->generateGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->identify:Ljava/lang/String;

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->title:Ljava/lang/String;

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->description:Ljava/lang/String;

    const-wide/32 v2, 0x8000

    :try_start_0
    iput-wide v2, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->b:J

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcn/sharesdk/sina/weibo/SinaActivity;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/api/WebpageObject;->setThumbImage(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->actionUrl:Ljava/lang/String;

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sina/weibo/sdk/api/WebpageObject;->defaultText:Ljava/lang/String;

    return-object v1

    :cond_1
    :try_start_1
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v0}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p0, v0}, Lcn/sharesdk/sina/weibo/SinaActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/api/WebpageObject;->setThumbImage(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/sina/weibo/sdk/api/WebpageObject;->setThumbImage(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private c()Lcom/sina/weibo/sdk/api/ImageObject;
    .locals 3

    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject;-><init>()V

    :try_start_0
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    const-wide/32 v1, 0x200000

    iput-wide v1, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->b:J

    sget-object v1, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImageData()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, p0, v1}, Lcn/sharesdk/sina/weibo/SinaActivity;->a(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/32 v1, 0xa00000

    iput-wide v1, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->b:J

    sget-object v1, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getImagePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p0, v1}, Lcn/sharesdk/sina/weibo/SinaActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/api/ImageObject;->setImageObject(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/mob/tools/utils/Ln;->e(Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d()Lcom/sina/weibo/sdk/api/TextObject;
    .locals 2

    new-instance v0, Lcom/sina/weibo/sdk/api/TextObject;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/TextObject;-><init>()V

    sget-object v1, Lcn/sharesdk/sina/weibo/SinaActivity;->f:Lcn/sharesdk/framework/Platform$ShareParams;

    invoke-virtual {v1}, Lcn/sharesdk/framework/Platform$ShareParams;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/api/TextObject;->text:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    const/4 v0, 0x1

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2, p0}, Lcom/mob/tools/utils/UIHandler;->sendEmptyMessageDelayed(IJLandroid/os/Handler$Callback;)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->finish()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->c:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->c:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->e()V

    return-void
.end method

.method public onCancel()V
    .locals 1

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->e()V

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->e()V

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v0, "action"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v0, "appkey"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "redirectUrl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "permissions"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "isUserClient"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Lcom/sina/weibo/sdk/auth/AuthInfo;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-direct {v6, p0, v3, v4, v0}, Lcom/sina/weibo/sdk/auth/AuthInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->d:Lcom/sina/weibo/sdk/auth/AuthInfo;

    new-instance v0, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    iget-object v4, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->d:Lcom/sina/weibo/sdk/auth/AuthInfo;

    invoke-direct {v0, p0, v4}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;-><init>(Landroid/app/Activity;Lcom/sina/weibo/sdk/auth/AuthInfo;)V

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->c:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->c:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorize(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->c:Lcom/sina/weibo/sdk/auth/sso/SsoHandler;

    invoke-virtual {v0, p0}, Lcom/sina/weibo/sdk/auth/sso/SsoHandler;->authorizeWeb(Lcom/sina/weibo/sdk/auth/WeiboAuthListener;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne v2, v0, :cond_3

    const-string v0, "token"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->a:Ljava/lang/String;

    invoke-static {p0, v3}, Lcom/sina/weibo/sdk/api/share/WeiboShareSDK;->createWeiboAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    move-result-object v0

    iput-object v0, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->registerApp()Z

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->a()V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->e()V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "onNewIntent ==>>"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mob/tools/utils/Ln;->i(Ljava/lang/Object;[Ljava/lang/Object;)I

    iget-object v0, p0, Lcn/sharesdk/sina/weibo/SinaActivity;->e:Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;

    invoke-interface {v0, p1, p0}, Lcom/sina/weibo/sdk/api/share/IWeiboShareAPI;->handleWeiboResponse(Landroid/content/Intent;Lcom/sina/weibo/sdk/api/share/IWeiboHandler$Response;)Z

    return-void
.end method

.method public onResponse(Lcom/sina/weibo/sdk/api/share/BaseResponse;)V
    .locals 2

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->e()V

    iget v0, p1, Lcom/sina/weibo/sdk/api/share/BaseResponse;->errCode:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onComplete(Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onCancel()V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-interface {v0, v1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 1

    invoke-direct {p0}, Lcn/sharesdk/sina/weibo/SinaActivity;->e()V

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    if-eqz v0, :cond_0

    sget-object v0, Lcn/sharesdk/sina/weibo/SinaActivity;->g:Lcn/sharesdk/framework/authorize/AuthorizeListener;

    invoke-interface {v0, p1}, Lcn/sharesdk/framework/authorize/AuthorizeListener;->onError(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
