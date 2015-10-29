.class public Lcom/umeng/socialize/sso/QZoneSsoHandler;
.super Lcom/umeng/socialize/controller/UMSsoHandler;
.source "QZoneSsoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_TARGET_URL:Ljava/lang/String; = "http://www.umeng.com/social"

.field protected static final TAG:Ljava/lang/String; = "QZoneSsoHandler"

.field public static isShowToast:Z

.field private static mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

.field private static mTargetUrl:Ljava/lang/String;

.field private static mTencent:Lcom/tencent/tauth/Tencent;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field private mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field private mUiListener:Lcom/tencent/tauth/IUiListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 61
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTargetUrl:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->isShowToast:Z

    .line 64
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMSsoHandler;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mActivity:Landroid/app/Activity;

    .line 59
    iput-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 136
    new-instance v0, Lcom/umeng/socialize/sso/QZoneSsoHandler$1;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/sso/QZoneSsoHandler$1;-><init>(Lcom/umeng/socialize/sso/QZoneSsoHandler;)V

    iput-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mUiListener:Lcom/tencent/tauth/IUiListener;

    .line 72
    iput-object p1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mActivity:Landroid/app/Activity;

    .line 73
    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/sso/QZoneSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    return-object v0
.end method

.method static synthetic access$1()Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    return-object v0
.end method

.method static synthetic access$2()Lcom/tencent/tauth/Tencent;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method static synthetic access$3(Lcom/umeng/socialize/bean/UMShareMsg;Z)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 377
    invoke-static {p0, p1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->buildParams(Lcom/umeng/socialize/bean/UMShareMsg;Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)Lcom/tencent/tauth/IUiListener;
    .locals 1

    .prologue
    .line 315
    invoke-static {p0, p1, p2}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->getShareToQQListener(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 0

    .prologue
    .line 642
    invoke-static {p0, p1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->sendAnalytic(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;)V

    return-void
.end method

.method private static buildParams(Lcom/umeng/socialize/bean/UMShareMsg;Z)Landroid/os/Bundle;
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x5

    const/4 v4, 0x2

    .line 378
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 379
    iget-object v5, p0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 380
    const-string v0, ""

    .line 382
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    .line 383
    instance-of v6, v1, Lcom/umeng/socialize/media/QZoneShareContent;

    if-eqz v6, :cond_6

    move-object v0, v1

    .line 384
    check-cast v0, Lcom/umeng/socialize/media/QZoneShareContent;

    .line 385
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QZoneShareContent;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 386
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QZoneShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v6

    .line 387
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QZoneShareContent;->getTargetUrl()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QZoneShareContent;->getTargetUrl()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTargetUrl:Ljava/lang/String;

    .line 390
    :cond_0
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QZoneShareContent;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v8

    .line 391
    sget-object v9, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v8, v9, :cond_4

    .line 392
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QZoneShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    .line 393
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v2

    .line 412
    :goto_0
    const-string v8, "title"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v5, "summary"

    invoke-virtual {v7, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    if-ne v0, v3, :cond_9

    .line 416
    invoke-static {v7, v1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->setShareToTextAndImage(Landroid/os/Bundle;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 424
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    const-string v1, "imageUrl"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    const-string v1, "imageUrl"

    invoke-virtual {v7, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 428
    const-string v1, "imageUrl"

    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 431
    :cond_2
    const-string v0, "title"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 432
    const-string v0, "title"

    const-string v1, "\u5206\u4eab\u5230QQ\u7a7a\u95f4"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_3
    return-object v7

    .line 396
    :cond_4
    sget-object v9, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v8, v9, :cond_5

    .line 397
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QZoneShareContent;->getShareMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object v1

    move v0, v4

    .line 399
    goto :goto_0

    :cond_5
    sget-object v9, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v8, v9, :cond_c

    .line 400
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QZoneShareContent;->getShareVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v1

    move v0, v4

    .line 403
    goto :goto_0

    :cond_6
    instance-of v6, v1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v6, :cond_7

    .line 404
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    if-eqz v1, :cond_b

    move-object v6, v5

    move-object v5, v0

    move v0, v2

    .line 407
    goto :goto_0

    :cond_7
    instance-of v6, v1, Lcom/umeng/socialize/media/UMVideo;

    if-nez v6, :cond_8

    .line 408
    instance-of v6, v1, Lcom/umeng/socialize/media/UMusic;

    if-eqz v6, :cond_b

    :cond_8
    move-object v6, v5

    move-object v5, v0

    move v0, v4

    .line 409
    goto :goto_0

    .line 417
    :cond_9
    if-ne v0, v2, :cond_a

    .line 418
    invoke-static {v7, v1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->setShareToImage(Landroid/os/Bundle;Lcom/umeng/socialize/media/UMediaObject;)V

    goto :goto_1

    .line 419
    :cond_a
    if-ne v0, v4, :cond_1

    .line 420
    invoke-static {v7, v1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->setShareToAudio(Landroid/os/Bundle;Lcom/umeng/socialize/media/UMediaObject;)V

    goto :goto_1

    :cond_b
    move-object v6, v5

    move-object v5, v0

    move v0, v3

    goto :goto_0

    :cond_c
    move v0, v3

    goto :goto_0
.end method

.method private static getShareMsg(Lcom/umeng/socialize/bean/SocializeEntity;)Lcom/umeng/socialize/bean/UMShareMsg;
    .locals 2

    .prologue
    .line 665
    .line 666
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    .line 668
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareMsg(Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 674
    :goto_0
    return-object v0

    .line 670
    :cond_0
    new-instance v0, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v0}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 671
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 672
    invoke-virtual {p0}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    goto :goto_0
.end method

.method private static getShareToQQListener(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)Lcom/tencent/tauth/IUiListener;
    .locals 2

    .prologue
    .line 318
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 320
    new-instance v0, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;

    invoke-direct {v0, p2, p1, p0}, Lcom/umeng/socialize/sso/QZoneSsoHandler$2;-><init>(Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Lcom/umeng/socialize/bean/SocializeEntity;Landroid/app/Activity;)V

    .line 362
    return-object v0
.end method

.method public static invokeQQShare(Lcom/umeng/socialize/bean/SocializeEntity;Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 226
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 227
    const-string v0, "QZoneSsoHandler"

    const-string v1, "\u5206\u4eab\u65f6\u8bf7\u4f20\u9012Activity\u5bf9\u8c61..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    move-object v0, p1

    .line 233
    check-cast v0, Landroid/app/Activity;

    .line 234
    invoke-static {p0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->getShareMsg(Lcom/umeng/socialize/bean/SocializeEntity;)Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v1

    .line 235
    invoke-static {p1}, Lcom/umeng/socialize/db/OauthHelper;->getAccessTokenForQQ(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 236
    if-eqz v2, :cond_3

    .line 237
    invoke-static {p2, v0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v3

    sput-object v3, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 238
    sget-object v3, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    .line 239
    sget-object v3, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {v3, v4, v2}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v2, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-static {v1, v6}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->buildParams(Lcom/umeng/socialize/bean/UMShareMsg;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 241
    invoke-static {v0, p0, p3}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->getShareToQQListener(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v3

    .line 240
    invoke-virtual {v2, v0, v1, v3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 251
    :cond_2
    :goto_1
    const-string v1, "com.tencent.mobileqq"

    invoke-static {v1, p1}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 252
    sget-object v1, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v2, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 253
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v4, 0xc8

    .line 252
    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 254
    invoke-static {v0, p0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->sendAnalytic(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;)V

    goto :goto_0

    .line 242
    :cond_3
    sget-object v2, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v2, :cond_4

    .line 243
    invoke-static {p2, v0}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v2

    sput-object v2, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 244
    sget-object v2, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    new-instance v3, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;

    .line 245
    invoke-direct {v3, v0, p0, v1, p3}, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;-><init>(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 244
    invoke-virtual {v2, v0, p2, v3}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    goto :goto_1

    .line 246
    :cond_4
    sget-object v2, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v2}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v2

    if-nez v2, :cond_2

    .line 247
    sget-object v2, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    const-string v3, "all"

    new-instance v4, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;

    .line 248
    invoke-direct {v4, v0, p0, v1, p3}, Lcom/umeng/socialize/sso/QZoneSsoHandler$BaseIUiListener;-><init>(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 247
    invoke-virtual {v2, v0, v3, v4}, Lcom/tencent/tauth/Tencent;->reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    goto :goto_1
.end method

.method public static invokeWebViewShare(Lcom/umeng/socialize/bean/SocializeEntity;Landroid/content/Context;Ljava/lang/String;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 4

    .prologue
    .line 196
    invoke-static {p2, p1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    .line 198
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 199
    check-cast p1, Landroid/app/Activity;

    .line 200
    invoke-static {p0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->getShareMsg(Lcom/umeng/socialize/bean/SocializeEntity;)Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->buildParams(Lcom/umeng/socialize/bean/UMShareMsg;Z)Landroid/os/Bundle;

    move-result-object v1

    .line 202
    sget-object v2, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v3, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 203
    invoke-static {p1, p0, p3}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->getShareToQQListener(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)Lcom/tencent/tauth/IUiListener;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/tencent/tauth/Tencent;->shareToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 205
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v3, 0xc8

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 207
    invoke-static {p1, p0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->sendAnalytic(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    const-string v0, "QZoneSsoHandler"

    const-string v1, "\u5206\u4eab\u65f6\u8bf7\u4f20\u9012Activity\u5bf9\u8c61..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isImageFileExist(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 625
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 626
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 627
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 629
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendAnalytic(Landroid/app/Activity;Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 4

    .prologue
    .line 643
    invoke-static {p1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->getShareMsg(Lcom/umeng/socialize/bean/SocializeEntity;)Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    .line 644
    iget-object v1, p1, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 645
    iget-object v2, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 646
    const-string v3, "qzone"

    .line 644
    invoke-static {p0, v1, v2, v0, v3}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 649
    :try_start_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v1, 0x18

    .line 648
    invoke-static {p0, v0, v1}, Lcom/umeng/socom/util/StatisticsDataUtils;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :goto_0
    return-void

    .line 650
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static setShareToAudio(Landroid/os/Bundle;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 3

    .prologue
    .line 494
    if-eqz p1, :cond_0

    .line 495
    instance-of v0, p1, Lcom/umeng/socialize/media/UMusic;

    if-nez v0, :cond_1

    .line 496
    instance-of v0, p1, Lcom/umeng/socialize/media/UMVideo;

    if-nez v0, :cond_1

    .line 497
    :cond_0
    const-string v0, "QZoneSsoHandler"

    const-string v1, "\u8bf7\u8bbe\u7f6e\u5206\u4eab\u5a92\u4f53..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    :goto_0
    return-void

    .line 500
    :cond_1
    const-string v0, ""

    .line 502
    instance-of v1, p1, Lcom/umeng/socialize/media/UMusic;

    if-eqz v1, :cond_8

    move-object v0, p1

    .line 503
    check-cast v0, Lcom/umeng/socialize/media/UMusic;

    .line 504
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 505
    const-string v1, "targetUrl"

    .line 506
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :goto_1
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 513
    const-string v1, "imageUrl"

    .line 514
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumb()Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 565
    :cond_3
    :goto_3
    const-string v1, "audio_url"

    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const-string v1, "req_type"

    .line 567
    const/4 v2, 0x2

    .line 566
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 568
    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 508
    :cond_4
    const-string v1, "targetUrl"

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 515
    :cond_5
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 516
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v2

    if-nez v2, :cond_6

    .line 519
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 521
    :cond_6
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 522
    const-string v2, "imageUrl"

    .line 523
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    .line 522
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 525
    :cond_7
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v1

    .line 527
    invoke-static {v1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->isImageFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 528
    const-string v2, "imageUrl"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 535
    :cond_8
    instance-of v1, p1, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v1, :cond_3

    move-object v0, p1

    .line 536
    check-cast v0, Lcom/umeng/socialize/media/UMVideo;

    .line 537
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 538
    const-string v1, "targetUrl"

    .line 539
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    .line 538
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    :goto_4
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 546
    const-string v1, "imageUrl"

    .line 547
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumb()Ljava/lang/String;

    move-result-object v2

    .line 546
    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    :cond_9
    :goto_5
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 541
    :cond_a
    const-string v1, "targetUrl"

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 548
    :cond_b
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 549
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    .line 550
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 551
    const-string v2, "imageUrl"

    .line 552
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 554
    :cond_c
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v1

    .line 556
    invoke-static {v1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->isImageFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 557
    const-string v2, "imageLocalUrl"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method

.method private static setShareToImage(Landroid/os/Bundle;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 2

    .prologue
    .line 583
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/umeng/socialize/media/UMImage;

    if-nez v0, :cond_1

    .line 584
    :cond_0
    const-string v0, "QZoneSsoHandler"

    const-string v1, "\u5206\u4eab\u56fe\u7247\u9519\u8bef..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_1
    check-cast p1, Lcom/umeng/socialize/media/UMImage;

    .line 587
    if-eqz p1, :cond_3

    .line 588
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 589
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 591
    :cond_2
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 592
    const-string v0, "targetUrl"

    .line 593
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    .line 592
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    :cond_3
    :goto_0
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 603
    const-string v0, "imageUrl"

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    :cond_4
    :goto_1
    const-string v0, "req_type"

    .line 615
    const/4 v1, 0x5

    .line 614
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 616
    return-void

    .line 594
    :cond_5
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 595
    const-string v0, "targetUrl"

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :cond_6
    const-string v0, "QZoneSsoHandler"

    const-string v1, "\u8bf7\u8bbe\u7f6eQZone targetUrl..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :cond_7
    if-eqz p1, :cond_4

    .line 605
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 607
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    .line 608
    invoke-static {v0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->isImageFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 610
    const-string v1, "imageLocalUrl"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setShareToTextAndImage(Landroid/os/Bundle;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 2

    .prologue
    .line 445
    const/4 v0, 0x0

    .line 446
    if-eqz p1, :cond_7

    instance-of v1, p1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v1, :cond_7

    .line 447
    check-cast p1, Lcom/umeng/socialize/media/UMImage;

    .line 449
    :goto_0
    const-string v0, "req_type"

    .line 450
    const/4 v1, 0x1

    .line 449
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 452
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTargetUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    const-string v0, "targetUrl"

    sget-object v1, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTargetUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :goto_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 473
    :cond_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 475
    const-string v0, "imageUrl"

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_1
    :goto_2
    return-void

    .line 454
    :cond_2
    if-eqz p1, :cond_5

    .line 455
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getTargetUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 456
    const-string v0, "targetUrl"

    .line 457
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getTargetUrl()Ljava/lang/String;

    move-result-object v1

    .line 456
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 458
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 459
    const-string v0, "targetUrl"

    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 461
    :cond_4
    const-string v0, "targetUrl"

    const-string v1, "http://www.umeng.com/social"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v0, "QZoneSsoHandler"

    const-string v1, "\u6ca1\u6709\u8bbe\u7f6eQZone targetUrl\uff0c\u6b64\u65f6\u5206\u4eab\u5c06\u91c7\u7528\u9ed8\u8ba4\u8fde\u63a5"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 465
    :cond_5
    const-string v0, "targetUrl"

    const-string v1, "http://www.umeng.com/social"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v0, "QZoneSsoHandler"

    const-string v1, "\u6ca1\u6709\u8bbe\u7f6eQZone targetUrl\uff0c\u6b64\u65f6\u5206\u4eab\u5c06\u91c7\u7528\u9ed8\u8ba4\u8fde\u63a5"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 476
    :cond_6
    if-eqz p1, :cond_1

    .line 477
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 478
    invoke-virtual {p1}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {v0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->isImageFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 481
    const-string v1, "imageUrl"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object p1, v0

    goto/16 :goto_0
.end method

.method public static setTargetUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 639
    sput-object p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTargetUrl:Ljava/lang/String;

    .line 640
    return-void
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 4

    .prologue
    .line 114
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    .line 117
    :cond_0
    iput-object p2, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 119
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 121
    invoke-virtual {p0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->initTencent(Ljava/lang/String;Landroid/content/Context;)V

    .line 122
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 123
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/socialize/sso/QZoneSsoHandler;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mActivity:Landroid/app/Activity;

    const-string v2, "all"

    iget-object v3, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mUiListener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->reAuth(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 131
    :cond_1
    :goto_0
    return-void

    .line 126
    :cond_2
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_3

    .line 127
    sget-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    iget-object v1, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mActivity:Landroid/app/Activity;

    const-string v2, "all"

    iget-object v3, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mUiListener:Lcom/tencent/tauth/IUiListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    goto :goto_0

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "QQ\u7a7a\u95f4\u6388\u6743\u5931\u8d25..."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method protected getAuthorizedData(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 5

    .prologue
    .line 81
    const-string v0, "access_token"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    const-string v1, "openid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    const-string v2, "expires_in"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 86
    const-string v4, "access_token"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "openid"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "uid"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "expires_in"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-object v3
.end method

.method public getRequstCode()I
    .locals 1

    .prologue
    .line 183
    const/16 v0, 0x1619

    return v0
.end method

.method protected initTencent(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 99
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "#### qzone app id  = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-static {p1, p2}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/sso/QZoneSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 101
    return-void
.end method
