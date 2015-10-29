.class public Lcom/umeng/socialize/controller/UMWXHandler;
.super Ljava/lang/Object;
.source "UMWXHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "video"

.field private static final B:Ljava/lang/String; = "music"

.field private static final C:I = 0x1

.field private static final D:I = 0x2

.field private static F:Z = false

.field private static G:Ljava/lang/String; = null

.field private static H:Lcom/umeng/socialize/media/UMediaObject; = null

.field private static I:Landroid/content/Context; = null

.field private static J:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler; = null

.field private static final b:I = 0x96

.field private static final c:I = 0x8000

.field private static final d:I = 0x200

.field private static final e:I = 0x400

.field private static f:Ljava/lang/String; = null

.field private static h:I = 0x0

.field private static i:I = 0x0

.field private static j:Lcom/tencent/mm/sdk/openapi/IWXAPI; = null

.field private static l:Ljava/lang/String; = null

.field private static m:Ljava/lang/String; = null

.field private static r:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener; = null

.field private static s:Lcom/umeng/socialize/bean/SocializeEntity; = null

.field private static final t:Ljava/lang/String; = "UMWXHandler"

.field private static w:Lcom/umeng/socialize/bean/SocializeConfig; = null

.field private static final x:Ljava/lang/String; = "text"

.field private static final y:Ljava/lang/String; = "image"

.field private static final z:Ljava/lang/String; = "text_image"


# instance fields
.field private E:Z

.field private final K:Landroid/os/Handler;

.field a:I

.field private g:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

.field private u:Landroid/app/ProgressDialog;

.field private v:Lcom/umeng/socialize/bean/CustomPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 72
    sput v1, Lcom/umeng/socialize/controller/UMWXHandler;->h:I

    .line 73
    sput v1, Lcom/umeng/socialize/controller/UMWXHandler;->i:I

    .line 85
    sput-object v2, Lcom/umeng/socialize/controller/UMWXHandler;->r:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 91
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 90
    sput-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->w:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 105
    sput-boolean v1, Lcom/umeng/socialize/controller/UMWXHandler;->F:Z

    .line 106
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->G:Ljava/lang/String;

    .line 107
    sput-object v2, Lcom/umeng/socialize/controller/UMWXHandler;->H:Lcom/umeng/socialize/media/UMediaObject;

    .line 108
    sput-object v2, Lcom/umeng/socialize/controller/UMWXHandler;->I:Landroid/content/Context;

    .line 113
    new-instance v0, Lcom/umeng/socialize/controller/UMWXHandler$1;

    invoke-direct {v0}, Lcom/umeng/socialize/controller/UMWXHandler$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->J:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    .line 171
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const-string v0, "http://www.umeng.com/social"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->g:Ljava/lang/String;

    .line 79
    const-string v0, "weixin"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->n:Ljava/lang/String;

    .line 80
    const-string v0, "\u5fae\u4fe1"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->o:Ljava/lang/String;

    .line 81
    iput v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->a:I

    .line 83
    iput-boolean v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->E:Z

    .line 1126
    new-instance v0, Lcom/umeng/socialize/controller/UMWXHandler$2;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/controller/UMWXHandler$2;-><init>(Lcom/umeng/socialize/controller/UMWXHandler;)V

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->K:Landroid/os/Handler;

    .line 188
    sput-object p2, Lcom/umeng/socialize/controller/UMWXHandler;->f:Ljava/lang/String;

    .line 189
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the weixin appid is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->j:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 193
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->j:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    sget-object v1, Lcom/umeng/socialize/controller/UMWXHandler;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 194
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    .line 196
    sget v0, Lcom/umeng/socialize/controller/UMWXHandler;->h:I

    if-eqz v0, :cond_1

    sget v0, Lcom/umeng/socialize/controller/UMWXHandler;->i:I

    if-nez v0, :cond_2

    .line 198
    :cond_1
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_wechat"

    .line 197
    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/umeng/socialize/controller/UMWXHandler;->h:I

    .line 200
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_wxcircle"

    .line 199
    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/umeng/socialize/controller/UMWXHandler;->i:I

    .line 203
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/UMWXHandler;Lcom/umeng/socialize/media/UMediaObject;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 1

    .prologue
    .line 654
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMWXHandler;->c(Lcom/umeng/socialize/media/UMediaObject;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/UMWXHandler;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 1

    .prologue
    .line 596
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/UMWXHandler;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMWXHandler;->c(Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/UMWXHandler;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 1

    .prologue
    .line 788
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 3

    .prologue
    const/16 v2, 0x96

    .line 598
    const/4 v0, 0x0

    .line 599
    instance-of v1, p1, Lcom/umeng/socialize/media/UMusic;

    if-eqz v1, :cond_0

    .line 600
    check-cast p1, Lcom/umeng/socialize/media/UMusic;

    .line 605
    :goto_0
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXMusicObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXMusicObject;-><init>()V

    .line 606
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/openapi/WXMusicObject;->musicUrl:Ljava/lang/String;

    .line 607
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/mm/sdk/openapi/WXMusicObject;->musicDataUrl:Ljava/lang/String;

    .line 608
    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 609
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 610
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 611
    iput-object p2, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 612
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->getThumb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 614
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-static {v0, v2, v2}, Lcom/umeng/socom/util/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/util/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 618
    :goto_1
    return-object v1

    .line 601
    :cond_0
    instance-of v1, p1, Lcom/umeng/socialize/media/WeiXinShareContent;

    if-eqz v1, :cond_2

    .line 602
    check-cast p1, Lcom/umeng/socialize/media/WeiXinShareContent;

    invoke-virtual {p1}, Lcom/umeng/socialize/media/WeiXinShareContent;->getShareMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object p1

    goto :goto_0

    .line 616
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMusic;->toByte()[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    goto :goto_1

    :cond_2
    move-object p1, v0

    goto :goto_0
.end method

.method static synthetic a()Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->r:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    return-object v0
.end method

.method private a(Lcom/umeng/socialize/media/UMediaObject$MediaType;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    const-string v0, ""

    .line 469
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_1

    .line 470
    const-string v0, "image"

    .line 476
    :cond_0
    :goto_0
    return-object v0

    .line 471
    :cond_1
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_2

    .line 472
    const-string v0, "music"

    goto :goto_0

    .line 473
    :cond_2
    sget-object v1, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v1, :cond_0

    .line 474
    const-string v0, "video"

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 0

    .prologue
    .line 86
    sput-object p0, Lcom/umeng/socialize/controller/UMWXHandler;->s:Lcom/umeng/socialize/bean/SocializeEntity;

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/UMWXHandler;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 910
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMWXHandler;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 85
    sput-object p0, Lcom/umeng/socialize/controller/UMWXHandler;->r:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    return-void
.end method

.method static synthetic a(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 0

    .prologue
    .line 107
    sput-object p0, Lcom/umeng/socialize/controller/UMWXHandler;->H:Lcom/umeng/socialize/media/UMediaObject;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 106
    sput-object p0, Lcom/umeng/socialize/controller/UMWXHandler;->G:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 3

    .prologue
    .line 403
    const-string v0, ""

    .line 404
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    .line 406
    const-string v0, "text"

    .line 453
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 454
    new-instance v1, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;-><init>(Lcom/umeng/socialize/controller/UMWXHandler;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/controller/UMWXHandler$LoadResourceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 458
    :goto_1
    return-void

    .line 407
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 408
    instance-of v1, p2, Lcom/umeng/socialize/media/UMImage;

    if-eqz v1, :cond_2

    .line 410
    const-string v0, "image"

    goto :goto_0

    .line 411
    :cond_2
    if-eqz p2, :cond_3

    instance-of v1, p2, Lcom/umeng/socialize/media/UMusic;

    if-eqz v1, :cond_3

    .line 413
    const-string v0, "music"

    goto :goto_0

    .line 414
    :cond_3
    if-eqz p2, :cond_4

    instance-of v1, p2, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v1, :cond_4

    .line 416
    const-string v0, "video"

    goto :goto_0

    .line 417
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p2, :cond_5

    .line 418
    instance-of v1, p2, Lcom/umeng/socialize/media/UMImage;

    if-eqz v1, :cond_5

    .line 420
    const-string v0, "text_image"

    goto :goto_0

    .line 421
    :cond_5
    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/umeng/socialize/media/BaseShareContent;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 422
    check-cast v0, Lcom/umeng/socialize/media/BaseShareContent;

    .line 423
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareContent()Ljava/lang/String;

    move-result-object p1

    .line 424
    iget-boolean v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    if-eqz v1, :cond_8

    move-object v1, p2

    .line 425
    check-cast v1, Lcom/umeng/socialize/media/CircleShareContent;

    .line 426
    invoke-virtual {v1}, Lcom/umeng/socialize/media/CircleShareContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 427
    invoke-virtual {v1}, Lcom/umeng/socialize/media/CircleShareContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/socialize/controller/UMWXHandler;->m:Ljava/lang/String;

    .line 436
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v1, v2, :cond_9

    .line 437
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p2

    .line 444
    :cond_7
    :goto_3
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v0

    .line 445
    invoke-direct {p0, v0}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/umeng/socialize/media/UMediaObject$MediaType;)Ljava/lang/String;

    move-result-object v0

    .line 446
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 448
    const-string v0, "text"

    goto/16 :goto_0

    :cond_8
    move-object v1, p2

    .line 430
    check-cast v1, Lcom/umeng/socialize/media/WeiXinShareContent;

    .line 431
    invoke-virtual {v1}, Lcom/umeng/socialize/media/WeiXinShareContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 432
    invoke-virtual {v1}, Lcom/umeng/socialize/media/WeiXinShareContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/umeng/socialize/controller/UMWXHandler;->l:Ljava/lang/String;

    goto :goto_2

    .line 438
    :cond_9
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v1, v2, :cond_a

    .line 439
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object p2

    goto :goto_3

    .line 440
    :cond_a
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v1, v2, :cond_7

    .line 441
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object p2

    goto :goto_3

    .line 449
    :cond_b
    const-string v1, "image"

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    const-string v0, "text_image"

    goto/16 :goto_0

    .line 456
    :cond_c
    const-string v0, "UMWXHandler"

    const-string v1, "\u5206\u4eab\u7684\u5a92\u4f53\u53ea\u652f\u6301\u6587\u5b57\uff0c\u56fe\u7247\uff0c\u56fe\u6587\u5206\u4eab..."

    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Z)V
    .locals 0

    .prologue
    .line 105
    sput-boolean p0, Lcom/umeng/socialize/controller/UMWXHandler;->F:Z

    return-void
.end method

.method private a(Lcom/tencent/mm/sdk/openapi/WXMediaMessage;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Z
    .locals 2

    .prologue
    .line 493
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->r:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 494
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->r:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 497
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->w:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 499
    new-instance v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;-><init>()V

    .line 500
    invoke-direct {p0, p2}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    .line 501
    iput-object p1, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    .line 502
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/tencent/mm/sdk/openapi/SendMessageToWX$Req;->scene:I

    .line 504
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->j:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/openapi/BaseReq;)Z

    move-result v0

    .line 505
    return v0

    .line 503
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/UMWXHandler;)Z
    .locals 1

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->E:Z

    return v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/UMWXHandler;Lcom/tencent/mm/sdk/openapi/WXMediaMessage;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Z
    .locals 1

    .prologue
    .line 491
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Lcom/tencent/mm/sdk/openapi/WXMediaMessage;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/umeng/socialize/controller/UMWXHandler;[BI)[B
    .locals 1

    .prologue
    .line 855
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/UMWXHandler;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private a([BI)[B
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 856
    .line 857
    if-eqz p1, :cond_2

    array-length v2, p1

    if-lt v2, p2, :cond_2

    .line 858
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 861
    array-length v2, p1

    .line 860
    invoke-static {p1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    move v2, v0

    move v0, v1

    .line 866
    :goto_0
    if-nez v2, :cond_0

    const/16 v5, 0xa

    if-le v0, v5, :cond_3

    .line 883
    :cond_0
    if-eqz v3, :cond_2

    .line 884
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 885
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 886
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 889
    :cond_1
    if-eqz p1, :cond_2

    array-length v0, p1

    if-gtz v0, :cond_2

    .line 890
    const-string v0, "UMWXHandler"

    .line 891
    const-string v1, "### \u60a8\u7684\u539f\u59cb\u56fe\u7247\u592a\u5927,\u5bfc\u81f4\u7f29\u7565\u56fe\u538b\u7f29\u8fc7\u540e\u8fd8\u5927\u4e8e32KB,\u8bf7\u5c06\u5206\u4eab\u5230\u5fae\u4fe1\u7684\u56fe\u7247\u8fdb\u884c\u9002\u5f53\u7f29\u5c0f."

    .line 890
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_2
    return-object p1

    .line 867
    :cond_3
    const-wide v5, 0x3fe999999999999aL    # 0.8

    int-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    .line 868
    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    .line 869
    const-string v6, "UMWXHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "quality = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v4, v6, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 871
    const-string v5, "UMWXHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "WeiXin Thumb Size = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    array-length v7, v7

    div-int/lit16 v7, v7, 0x400

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 871
    invoke-static {v5, v6}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    if-ge v5, p2, :cond_4

    move v2, v1

    .line 875
    goto :goto_0

    .line 876
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/UMWXHandler;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 1

    .prologue
    .line 750
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 5

    .prologue
    const/16 v4, 0x96

    .line 752
    const/4 v0, 0x0

    .line 753
    instance-of v1, p1, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 754
    check-cast v0, Lcom/umeng/socialize/media/UMVideo;

    .line 758
    :cond_0
    :goto_0
    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXVideoObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/WXVideoObject;-><init>()V

    .line 760
    new-instance v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v2, v1}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    .line 761
    if-eqz v0, :cond_1

    .line 762
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 764
    :cond_1
    iput-object p2, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 765
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/tencent/mm/sdk/openapi/WXVideoObject;->videoUrl:Ljava/lang/String;

    .line 766
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 768
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumb()Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-static {v0, v4, v4}, Lcom/umeng/socom/util/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/util/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 773
    :cond_2
    :goto_1
    return-object v2

    .line 755
    :cond_3
    instance-of v1, p1, Lcom/umeng/socialize/media/WeiXinShareContent;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 756
    check-cast v0, Lcom/umeng/socialize/media/WeiXinShareContent;

    invoke-virtual {v0}, Lcom/umeng/socialize/media/WeiXinShareContent;->getShareVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v0

    goto :goto_0

    .line 769
    :cond_4
    if-eqz v0, :cond_2

    .line 770
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->toByte()[B

    move-result-object v0

    .line 771
    iput-object v0, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    goto :goto_1
.end method

.method private b(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/16 v4, 0x96

    .line 790
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;-><init>()V

    .line 791
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/tencent/mm/sdk/openapi/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    .line 792
    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v1, v0}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;)V

    .line 793
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->m:Ljava/lang/String;

    :goto_0
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 794
    iput-object p1, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 796
    invoke-interface {p2}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 798
    invoke-interface {p2}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v2

    .line 799
    invoke-direct {p0, v2}, Lcom/umeng/socialize/controller/UMWXHandler;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 800
    if-nez v0, :cond_0

    .line 803
    invoke-static {v2, v4, v4}, Lcom/umeng/socom/util/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 806
    :cond_0
    if-eqz v0, :cond_1

    .line 807
    invoke-static {v0}, Lcom/umeng/socialize/media/UMImage;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 810
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 811
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    :goto_1
    move-object v0, v1

    .line 840
    :goto_2
    return-object v0

    .line 793
    :cond_3
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->l:Ljava/lang/String;

    goto :goto_0

    .line 815
    :cond_4
    invoke-interface {p2}, Lcom/umeng/socialize/media/UMediaObject;->toByte()[B

    move-result-object v3

    .line 817
    if-eqz v3, :cond_7

    .line 818
    array-length v0, v3

    .line 821
    :goto_3
    if-nez v0, :cond_5

    move-object v0, v1

    .line 822
    goto :goto_2

    .line 825
    :cond_5
    invoke-static {v3, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 827
    const v3, 0x8000

    if-lt v0, v3, :cond_6

    .line 830
    const/4 v0, 0x1

    .line 829
    invoke-static {v2, v4, v4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 831
    invoke-static {v0}, Lcom/umeng/socialize/media/UMImage;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 836
    :goto_4
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 837
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 834
    :cond_6
    invoke-static {v2}, Lcom/umeng/socialize/media/UMImage;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_3
.end method

.method static synthetic b()Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->s:Lcom/umeng/socialize/bean/SocializeEntity;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/UMWXHandler;Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMWXHandler;->b(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 3

    .prologue
    .line 354
    if-nez p1, :cond_1

    .line 355
    const/4 p1, 0x0

    .line 390
    :cond_0
    :goto_0
    return-object p1

    .line 359
    :cond_1
    const-string v1, ""

    .line 361
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 362
    const-string v0, ""

    .line 363
    instance-of v2, p1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v2, :cond_2

    move-object v0, p1

    .line 364
    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 366
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    .line 369
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 374
    :goto_1
    instance-of v1, p1, Lcom/umeng/socialize/media/WeiXinShareContent;

    if-eqz v1, :cond_4

    .line 375
    check-cast p1, Lcom/umeng/socialize/media/WeiXinShareContent;

    .line 377
    invoke-virtual {p1}, Lcom/umeng/socialize/media/WeiXinShareContent;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    .line 387
    :cond_3
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    iput-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->g:Ljava/lang/String;

    goto :goto_0

    .line 378
    :cond_4
    instance-of v1, p1, Lcom/umeng/socialize/media/CircleShareContent;

    if-eqz v1, :cond_3

    .line 379
    check-cast p1, Lcom/umeng/socialize/media/CircleShareContent;

    .line 381
    invoke-virtual {p1}, Lcom/umeng/socialize/media/CircleShareContent;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 521
    if-nez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 522
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

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 108
    sput-object p0, Lcom/umeng/socialize/controller/UMWXHandler;->I:Landroid/content/Context;

    return-void
.end method

.method static synthetic b(Lcom/umeng/socialize/controller/UMWXHandler;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/UMWXHandler;->a(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    return-void
.end method

.method private c(Lcom/umeng/socialize/media/UMediaObject;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x96

    .line 656
    .line 657
    instance-of v1, p1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v1, :cond_2

    .line 658
    check-cast p1, Lcom/umeng/socialize/media/UMImage;

    .line 663
    :goto_0
    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXImageObject;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/WXImageObject;-><init>()V

    .line 664
    new-instance v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 666
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v3

    .line 669
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 671
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v3

    .line 672
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 673
    iput-object v3, v1, Lcom/tencent/mm/sdk/openapi/WXImageObject;->imagePath:Ljava/lang/String;

    .line 675
    invoke-direct {p0, v3}, Lcom/umeng/socialize/controller/UMWXHandler;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 676
    invoke-static {v3}, Lcom/umeng/socom/util/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v4

    iput-object v4, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 678
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 679
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 687
    :cond_0
    :goto_1
    iget-object v3, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    if-nez v3, :cond_1

    .line 688
    iput-object v0, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 712
    :cond_1
    :goto_2
    iput-object v1, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 713
    return-object v2

    .line 659
    :cond_2
    instance-of v1, p1, Lcom/umeng/socialize/media/WeiXinShareContent;

    if-eqz v1, :cond_7

    .line 660
    check-cast p1, Lcom/umeng/socialize/media/WeiXinShareContent;

    invoke-virtual {p1}, Lcom/umeng/socialize/media/WeiXinShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    goto :goto_0

    .line 682
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v0

    .line 683
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXImageObject;->imageData:[B

    .line 685
    iput-object v0, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    goto :goto_1

    .line 692
    :cond_4
    invoke-static {v3}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 693
    iput-object v3, v1, Lcom/tencent/mm/sdk/openapi/WXImageObject;->imageUrl:Ljava/lang/String;

    .line 694
    const-string v0, "UMWXHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5206\u4eab\u5230\u5fae\u4fe1\u7684\u56fe\u7247url : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tencent/mm/sdk/openapi/WXImageObject;->imageUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    :goto_3
    invoke-direct {p0, v3}, Lcom/umeng/socialize/controller/UMWXHandler;->d(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 703
    if-nez v0, :cond_5

    .line 705
    invoke-static {v3, v6, v6}, Lcom/umeng/socom/util/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 707
    :cond_5
    invoke-static {v0}, Lcom/umeng/socom/util/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->thumbData:[B

    .line 708
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 709
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    .line 696
    :cond_6
    iput-object v3, v1, Lcom/tencent/mm/sdk/openapi/WXImageObject;->imagePath:Ljava/lang/String;

    .line 697
    const-string v0, "UMWXHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5206\u4eab\u5230\u5fae\u4fe1\u7684\u56fe\u7247\u672c\u5730\u8def\u5f84 : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/tencent/mm/sdk/openapi/WXImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    move-object p1, v0

    goto/16 :goto_0
.end method

.method private c(Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/WXMediaMessage;
    .locals 2

    .prologue
    .line 632
    new-instance v0, Lcom/tencent/mm/sdk/openapi/WXTextObject;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/openapi/WXTextObject;-><init>()V

    .line 633
    iput-object p1, v0, Lcom/tencent/mm/sdk/openapi/WXTextObject;->text:Ljava/lang/String;

    .line 635
    new-instance v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;

    invoke-direct {v1}, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;-><init>()V

    .line 637
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->mediaObject:Lcom/tencent/mm/sdk/openapi/WXMediaMessage$IMediaObject;

    .line 638
    iput-object p1, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->description:Ljava/lang/String;

    .line 639
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->l:Ljava/lang/String;

    :goto_0
    iput-object v0, v1, Lcom/tencent/mm/sdk/openapi/WXMediaMessage;->title:Ljava/lang/String;

    .line 640
    return-object v1

    .line 639
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic c()Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->w:Lcom/umeng/socialize/bean/SocializeConfig;

    return-object v0
.end method

.method private c(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 911
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    .line 912
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 913
    const-string v4, "Theme.UMDialog"

    .line 912
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 911
    iput-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->u:Landroid/app/ProgressDialog;

    .line 915
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    .line 916
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_text_waitting"

    .line 915
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 917
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 918
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    .line 917
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 918
    if-eqz v1, :cond_1

    .line 919
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    .line 920
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_text_waitting_weixin"

    .line 919
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 927
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 928
    return-void

    .line 921
    :cond_1
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 922
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    .line 921
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 922
    if-eqz v1, :cond_0

    .line 923
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    .line 924
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 925
    const-string v3, "umeng_socialize_text_waitting_weixin_circle"

    .line 923
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/umeng/socialize/controller/UMWXHandler;)V
    .locals 0

    .prologue
    .line 564
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMWXHandler;->j()V

    return-void
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->I:Landroid/content/Context;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/16 v2, 0x96

    .line 724
    const/4 v0, 0x0

    .line 726
    invoke-static {p1}, Lcom/umeng/socom/util/BitmapUtils;->isCacheFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    const v0, 0x8000

    invoke-static {p1, v0}, Lcom/umeng/socom/util/BitmapUtils;->isNeedScale(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    invoke-static {p1, v2, v2}, Lcom/umeng/socom/util/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 734
    :cond_0
    :goto_0
    return-object v0

    .line 731
    :cond_1
    invoke-static {p1}, Lcom/umeng/socom/util/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/umeng/socialize/controller/UMWXHandler;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->K:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->G:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/umeng/socialize/controller/UMWXHandler;)V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMWXHandler;->k()V

    return-void
.end method

.method static synthetic f()Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 107
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->H:Lcom/umeng/socialize/media/UMediaObject;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/socialize/controller/UMWXHandler;)Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    return v0
.end method

.method static synthetic g(Lcom/umeng/socialize/controller/UMWXHandler;)V
    .locals 0

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMWXHandler;->i()V

    return-void
.end method

.method static synthetic g()Z
    .locals 1

    .prologue
    .line 105
    sget-boolean v0, Lcom/umeng/socialize/controller/UMWXHandler;->F:Z

    return v0
.end method

.method public static getWXApi()Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->j:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method public static getWXEventHandler()Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->J:Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;

    return-object v0
.end method

.method static synthetic h()Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/umeng/socialize/controller/UMWXHandler;->j:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method static synthetic h(Lcom/umeng/socialize/controller/UMWXHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->q:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 323
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    if-nez v0, :cond_0

    .line 324
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 328
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method private j()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 567
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 571
    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 579
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->u:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 583
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1066
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1080
    :goto_0
    return v1

    .line 1069
    :cond_0
    const/4 v0, 0x1

    .line 1070
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1071
    const-string v3, ".wxapi.WXEntryActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1070
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1073
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1074
    const-string v3, "UMWXHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "### \u5fae\u4fe1\u6216\u5fae\u4fe1\u670b\u53cb\u5708\u56de\u8c03\u7c7b\u5730\u5740 : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v0

    .line 1080
    goto :goto_0

    .line 1075
    :catch_0
    move-exception v0

    .line 1077
    const-string v0, "UMWXHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1078
    const-string v2, " \u7c7b\u6ca1\u6709\u627e\u5230. \u8bf7\u628aweixin\u6587\u4ef6\u5939\u4e2d\u7684wxapi\u76ee\u5f55\u62f7\u8d1d\u5230\u60a8\u7684\u5305\u76ee\u5f55\u4e0b."

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1077
    invoke-static {v0, v2}, Lcom/umeng/socom/Log;->b(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method

.method public addWXCustomPlatform(Lcom/umeng/socialize/controller/UMSocialService;Ljava/lang/String;IZLcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 217
    iput-object p2, p0, Lcom/umeng/socialize/controller/UMWXHandler;->o:Ljava/lang/String;

    .line 218
    iput p3, p0, Lcom/umeng/socialize/controller/UMWXHandler;->a:I

    .line 219
    iput-boolean p4, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    .line 220
    iput-object p5, p0, Lcom/umeng/socialize/controller/UMWXHandler;->q:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    .line 222
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMWXHandler;->build()Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v1

    .line 223
    invoke-interface {p1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->getCustomPlatforms()Ljava/util/List;

    move-result-object v2

    .line 225
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :goto_0
    invoke-interface {p1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 235
    const/4 v0, 0x1

    return v0

    .line 225
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 226
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/CustomPlatform;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/CustomPlatform;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    const-string v3, "com.umeng.socialize"

    .line 228
    const-string v4, "find the same custom-platform has added,and then remove old one."

    .line 227
    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final build()Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 4

    .prologue
    .line 243
    iget v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->a:I

    if-nez v0, :cond_0

    .line 244
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/umeng/socialize/controller/UMWXHandler;->i:I

    :goto_0
    iput v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->a:I

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    if-eqz v0, :cond_2

    const-string v0, "weixin_circle"

    :goto_1
    iput-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->n:Ljava/lang/String;

    .line 250
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    if-eqz v0, :cond_3

    const-string v0, "\u670b\u53cb\u5708"

    :goto_2
    iput-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->o:Ljava/lang/String;

    .line 252
    new-instance v0, Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->n:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMWXHandler;->o:Ljava/lang/String;

    iget v3, p0, Lcom/umeng/socialize/controller/UMWXHandler;->a:I

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 254
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    if-eqz v0, :cond_4

    .line 255
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 256
    const-string v2, "umeng_socialize_wxcircle_gray"

    .line 255
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 261
    :goto_3
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    iput v0, v1, Lcom/umeng/socialize/bean/CustomPlatform;->mGrayIcon:I

    .line 262
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    new-instance v1, Lcom/umeng/socialize/controller/UMWXHandler$3;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/controller/UMWXHandler$3;-><init>(Lcom/umeng/socialize/controller/UMWXHandler;)V

    iput-object v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    .line 314
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->v:Lcom/umeng/socialize/bean/CustomPlatform;

    return-object v0

    .line 244
    :cond_1
    sget v0, Lcom/umeng/socialize/controller/UMWXHandler;->h:I

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->n:Ljava/lang/String;

    goto :goto_1

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->o:Ljava/lang/String;

    goto :goto_2

    .line 258
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->k:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 259
    const-string v2, "umeng_socialize_wechat_gray"

    .line 258
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    goto :goto_3
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 535
    iget v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->a:I

    return v0
.end method

.method public getListener()Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->q:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    return-object v0
.end method

.method public getShowWords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->o:Ljava/lang/String;

    return-object v0
.end method

.method public isShowCompressToast()Z
    .locals 1

    .prologue
    .line 1111
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->E:Z

    return v0
.end method

.method public isToCircle()Z
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    return v0
.end method

.method public setCircleTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1101
    sput-object p1, Lcom/umeng/socialize/controller/UMWXHandler;->m:Ljava/lang/String;

    .line 1103
    :cond_0
    return-void
.end method

.method public setContentURL(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->g:Ljava/lang/String;

    .line 1054
    return-void
.end method

.method public setIcon(I)Lcom/umeng/socialize/controller/UMWXHandler;
    .locals 0

    .prologue
    .line 539
    iput p1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->a:I

    .line 540
    return-object p0
.end method

.method public setListener(Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;)Lcom/umeng/socialize/controller/UMWXHandler;
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->q:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    .line 558
    return-object p0
.end method

.method public setShowWords(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMWXHandler;
    .locals 0

    .prologue
    .line 530
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->o:Ljava/lang/String;

    .line 531
    return-object p0
.end method

.method public setToCircle(Z)Lcom/umeng/socialize/controller/UMWXHandler;
    .locals 0

    .prologue
    .line 548
    iput-boolean p1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->p:Z

    .line 549
    return-object p0
.end method

.method public setWXTitle(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1089
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1090
    sput-object p1, Lcom/umeng/socialize/controller/UMWXHandler;->l:Ljava/lang/String;

    .line 1092
    :cond_0
    return-void
.end method

.method public showCompressToast(Z)V
    .locals 0

    .prologue
    .line 1120
    iput-boolean p1, p0, Lcom/umeng/socialize/controller/UMWXHandler;->E:Z

    .line 1121
    return-void
.end method
