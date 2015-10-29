.class public Lcom/umeng/socialize/controller/UMYXHandler;
.super Lcom/umeng/socialize/controller/CustomHandler;
.source "UMYXHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mCallbackHandler:Lim/yixin/sdk/api/IYXAPICallbackEventHandler;

.field private static mYXApi:Lim/yixin/sdk/api/IYXAPI;

.field private static tmpContext:Landroid/content/Context;

.field private static tmpDesc:Ljava/lang/String;

.field private static tmpIsToCircle:Z

.field private static tmpMediaObject:Lcom/umeng/socialize/media/UMediaObject;


# instance fields
.field private isShowWaitingDlg:Z

.field private mTargetUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    const-class v0, Lcom/umeng/socialize/controller/UMYXHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/controller/UMYXHandler;->tmpIsToCircle:Z

    .line 65
    const-string v0, ""

    sput-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->tmpDesc:Ljava/lang/String;

    .line 66
    sput-object v1, Lcom/umeng/socialize/controller/UMYXHandler;->tmpMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    .line 67
    sput-object v1, Lcom/umeng/socialize/controller/UMYXHandler;->tmpContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/umeng/socialize/controller/UMYXHandler$1;

    invoke-direct {v0}, Lcom/umeng/socialize/controller/UMYXHandler$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->mCallbackHandler:Lim/yixin/sdk/api/IYXAPICallbackEventHandler;

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/controller/UMYXHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appid"    # Ljava/lang/String;

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/socialize/controller/UMYXHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appid"    # Ljava/lang/String;
    .param p3, "isToCircle"    # Z

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/CustomHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTargetUrl:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTitle:Ljava/lang/String;

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->isShowWaitingDlg:Z

    .line 188
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mAppId:Ljava/lang/String;

    invoke-static {v0, v1}, Lim/yixin/sdk/api/YXAPIFactory;->createYXAPI(Landroid/content/Context;Ljava/lang/String;)Lim/yixin/sdk/api/IYXAPI;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->mYXApi:Lim/yixin/sdk/api/IYXAPI;

    .line 189
    sget-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->mYXApi:Lim/yixin/sdk/api/IYXAPI;

    invoke-interface {v0}, Lim/yixin/sdk/api/IYXAPI;->registerApp()Z

    .line 191
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/controller/UMYXHandler;->buildDialog(Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->tmpContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$10(Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 0

    .prologue
    .line 66
    sput-object p0, Lcom/umeng/socialize/controller/UMYXHandler;->tmpMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    return-void
.end method

.method static synthetic access$11(Lcom/umeng/socialize/controller/UMYXHandler;)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMYXHandler;->safeCloseDialog()V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->tmpDesc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3()Lcom/umeng/socialize/media/UMediaObject;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->tmpMediaObject:Lcom/umeng/socialize/media/UMediaObject;

    return-object v0
.end method

.method static synthetic access$4()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/umeng/socialize/controller/UMYXHandler;->tmpIsToCircle:Z

    return v0
.end method

.method static synthetic access$5(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 67
    sput-object p0, Lcom/umeng/socialize/controller/UMYXHandler;->tmpContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$6(Lcom/umeng/socialize/controller/UMYXHandler;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->isShowWaitingDlg:Z

    return v0
.end method

.method static synthetic access$7(Lcom/umeng/socialize/controller/UMYXHandler;)V
    .locals 0

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMYXHandler;->safeShowDialog()V

    return-void
.end method

.method static synthetic access$8(Z)V
    .locals 0

    .prologue
    .line 64
    sput-boolean p0, Lcom/umeng/socialize/controller/UMYXHandler;->tmpIsToCircle:Z

    return-void
.end method

.method static synthetic access$9(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    sput-object p0, Lcom/umeng/socialize/controller/UMYXHandler;->tmpDesc:Ljava/lang/String;

    return-void
.end method

.method private buildDialog(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 423
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    .line 424
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 425
    const-string v5, "Theme.UMDialog"

    .line 424
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    .line 423
    iput-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 427
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    .line 428
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 429
    const-string v4, "umeng_socialize_text_loading_message"

    .line 427
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 431
    return-void
.end method

.method private checkTargetUrl(Ljava/lang/String;)V
    .locals 3
    .param p1, "newTargetUrl"    # Ljava/lang/String;

    .prologue
    .line 382
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTargetUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTargetUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 386
    invoke-static {p1}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTargetUrl:Ljava/lang/String;

    .line 392
    :goto_0
    sget-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### \u5206\u4eab\u5230\u6613\u4fe1\u7684url\u4e3a\u7a7a, \u6216\u8005\u6ca1\u6709\u4ee5http\u3001https\u3001www\u5f00\u5934.\n\u66ff\u6362\u4e3a : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTargetUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_1
    return-void

    .line 389
    :cond_2
    const-string v0, "http://www.umeng.com/social"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTargetUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private checkTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTitle:Ljava/lang/String;

    .line 376
    :cond_0
    return-void
.end method

.method public static getCallbackHandler()Lim/yixin/sdk/api/IYXAPICallbackEventHandler;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->mCallbackHandler:Lim/yixin/sdk/api/IYXAPICallbackEventHandler;

    return-object v0
.end method

.method public static getYXApi()Lim/yixin/sdk/api/IYXAPI;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->mYXApi:Lim/yixin/sdk/api/IYXAPI;

    return-object v0
.end method

.method private safeCloseDialog()V
    .locals 2

    .prologue
    .line 451
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 452
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 453
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 454
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 459
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method

.method private safeShowDialog()V
    .locals 2

    .prologue
    .line 437
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 438
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 439
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 445
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected buildMediaObject(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 7
    .param p1, "media"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 243
    if-nez p1, :cond_1

    .line 244
    const/4 v1, 0x0

    .line 277
    :cond_0
    :goto_0
    return-object v1

    .line 246
    :cond_1
    const/4 v1, 0x0

    .line 247
    .local v1, "shareMedia":Lcom/umeng/socialize/media/UMediaObject;
    const-string v3, ""

    .line 248
    .local v3, "title":Ljava/lang/String;
    const-string v2, ""

    .line 249
    .local v2, "targetUrl":Ljava/lang/String;
    instance-of v6, p1, Lcom/umeng/socialize/media/YiXinShareContent;

    if-eqz v6, :cond_4

    move-object v4, p1

    .line 250
    check-cast v4, Lcom/umeng/socialize/media/YiXinShareContent;

    .line 251
    .local v4, "yixin":Lcom/umeng/socialize/media/YiXinShareContent;
    invoke-virtual {v4}, Lcom/umeng/socialize/media/YiXinShareContent;->getShareMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    .line 252
    invoke-virtual {v4}, Lcom/umeng/socialize/media/YiXinShareContent;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 253
    invoke-virtual {v4}, Lcom/umeng/socialize/media/YiXinShareContent;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {v4}, Lcom/umeng/socialize/media/YiXinShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mShareContent:Ljava/lang/String;

    .line 268
    .end local v4    # "yixin":Lcom/umeng/socialize/media/YiXinShareContent;
    :cond_2
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 269
    iput-object v3, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTitle:Ljava/lang/String;

    .line 272
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 273
    invoke-static {v2}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    iput-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTargetUrl:Ljava/lang/String;

    goto :goto_0

    .line 255
    :cond_4
    instance-of v6, p1, Lcom/umeng/socialize/media/YiXinCircleShareContent;

    if-eqz v6, :cond_5

    move-object v5, p1

    .line 256
    check-cast v5, Lcom/umeng/socialize/media/YiXinCircleShareContent;

    .line 257
    .local v5, "yixinCircle":Lcom/umeng/socialize/media/YiXinCircleShareContent;
    invoke-virtual {v5}, Lcom/umeng/socialize/media/YiXinCircleShareContent;->getShareMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    .line 258
    invoke-virtual {v5}, Lcom/umeng/socialize/media/YiXinCircleShareContent;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 259
    invoke-virtual {v5}, Lcom/umeng/socialize/media/YiXinCircleShareContent;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    .line 260
    invoke-virtual {v5}, Lcom/umeng/socialize/media/YiXinCircleShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mShareContent:Ljava/lang/String;

    goto :goto_1

    .line 261
    .end local v5    # "yixinCircle":Lcom/umeng/socialize/media/YiXinCircleShareContent;
    :cond_5
    instance-of v6, p1, Lcom/umeng/socialize/media/BaseMediaObject;

    if-eqz v6, :cond_2

    move-object v0, p1

    .line 262
    check-cast v0, Lcom/umeng/socialize/media/BaseMediaObject;

    .local v0, "baseMediaObject":Lcom/umeng/socialize/media/BaseMediaObject;
    move-object v1, p1

    .line 263
    check-cast v1, Lcom/umeng/socialize/media/BaseMediaObject;

    .line 264
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseMediaObject;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 265
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseMediaObject;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected doShare(Ljava/lang/Object;Lcom/umeng/socialize/media/UMediaObject$MediaType;)Z
    .locals 4
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "type"    # Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 290
    .local v1, "sendReq":Z
    sget-object v3, Lcom/umeng/socialize/controller/UMYXHandler;->mYXApi:Lim/yixin/sdk/api/IYXAPI;

    if-eqz v3, :cond_0

    instance-of v3, p1, Lim/yixin/sdk/api/YXMessage;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 292
    check-cast v2, Lim/yixin/sdk/api/YXMessage;

    .line 293
    .local v2, "yixinMsg":Lim/yixin/sdk/api/YXMessage;
    new-instance v0, Lim/yixin/sdk/api/SendMessageToYX$Req;

    invoke-direct {v0}, Lim/yixin/sdk/api/SendMessageToYX$Req;-><init>()V

    .line 294
    .local v0, "req":Lim/yixin/sdk/api/SendMessageToYX$Req;
    invoke-virtual {p2}, Lcom/umeng/socialize/media/UMediaObject$MediaType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/umeng/socialize/controller/UMYXHandler;->buildTransaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lim/yixin/sdk/api/SendMessageToYX$Req;->transaction:Ljava/lang/String;

    .line 295
    iput-object v2, v0, Lim/yixin/sdk/api/SendMessageToYX$Req;->message:Lim/yixin/sdk/api/YXMessage;

    .line 296
    iget-boolean v3, p0, Lcom/umeng/socialize/controller/UMYXHandler;->isToCircle:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput v3, v0, Lim/yixin/sdk/api/SendMessageToYX$Req;->scene:I

    .line 298
    sget-object v3, Lcom/umeng/socialize/controller/UMYXHandler;->mYXApi:Lim/yixin/sdk/api/IYXAPI;

    invoke-interface {v3, v0}, Lim/yixin/sdk/api/IYXAPI;->sendRequest(Lim/yixin/sdk/api/BaseReq;)Z

    move-result v1

    .line 300
    .end local v0    # "req":Lim/yixin/sdk/api/SendMessageToYX$Req;
    .end local v2    # "yixinMsg":Lim/yixin/sdk/api/YXMessage;
    :cond_0
    return v1

    .line 297
    .restart local v0    # "req":Lim/yixin/sdk/api/SendMessageToYX$Req;
    .restart local v2    # "yixinMsg":Lim/yixin/sdk/api/YXMessage;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public enableLoadingDialog(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->isShowWaitingDlg:Z

    .line 410
    return-void
.end method

.method protected getShareImage(Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
    .locals 11
    .param p1, "shareImage"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    const/high16 v10, 0x435c0000    # 220.0f

    .line 614
    move-object v6, p1

    check-cast v6, Lcom/umeng/socialize/media/UMImage;

    .line 616
    .local v6, "umImage":Lcom/umeng/socialize/media/UMImage;
    const/4 v5, 0x0

    .line 618
    .local v5, "thumbBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Lim/yixin/sdk/api/YXImageMessageData;

    invoke-direct {v1}, Lim/yixin/sdk/api/YXImageMessageData;-><init>()V

    .line 619
    .local v1, "imgObj":Lim/yixin/sdk/api/YXImageMessageData;
    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v7

    if-nez v7, :cond_0

    .line 620
    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 623
    :cond_0
    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->isUrlMedia()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 624
    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "imgPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 627
    iput-object v2, v1, Lim/yixin/sdk/api/YXImageMessageData;->imageUrl:Ljava/lang/String;

    .line 632
    :goto_0
    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->getThumb()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 633
    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->getThumb()Ljava/lang/String;

    move-result-object v7

    .line 634
    iget v8, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mThumbSize:I

    iget v9, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mThumbSize:I

    .line 633
    invoke-static {v7, v8, v9}, Lcom/umeng/socom/util/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 639
    :goto_1
    sget-object v7, Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "### \u56fe\u7247url = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p0, v5, v10}, Lcom/umeng/socialize/controller/UMYXHandler;->createThumb(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 674
    :cond_1
    :goto_2
    new-instance v3, Lim/yixin/sdk/api/YXMessage;

    invoke-direct {v3}, Lim/yixin/sdk/api/YXMessage;-><init>()V

    .line 675
    .local v3, "msg":Lim/yixin/sdk/api/YXMessage;
    iput-object v1, v3, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    .line 676
    invoke-static {v5}, Lcom/umeng/socom/util/BitmapUtils;->bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v7

    iput-object v7, v3, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    .line 677
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_2

    .line 678
    sget-object v7, Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "###\u6613\u4fe1\u7f29\u7565\u56fewidth = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 679
    const-string v9, ", height = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 678
    invoke-static {v7, v8}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 682
    :cond_2
    return-object v3

    .line 629
    .end local v3    # "msg":Lim/yixin/sdk/api/YXMessage;
    :cond_3
    iput-object v2, v1, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    goto :goto_0

    .line 637
    :cond_4
    iget v7, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mThumbSize:I

    iget v8, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mThumbSize:I

    .line 636
    invoke-static {v2, v7, v8}, Lcom/umeng/socom/util/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_1

    .line 642
    .end local v2    # "imgPath":Ljava/lang/String;
    :cond_5
    sget-object v7, Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;

    const-string v8, "### \u5206\u4eab\u5230\u6613\u4fe1\u7684\u4e3a\u672c\u5730\u6216\u8005\u8d44\u6e90\u56fe\u7247"

    invoke-static {v7, v8}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v2

    .line 645
    .restart local v2    # "imgPath":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 646
    iput-object v2, v1, Lim/yixin/sdk/api/YXImageMessageData;->imagePath:Ljava/lang/String;

    .line 649
    iget v7, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mThumbSize:I

    iget v8, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mThumbSize:I

    .line 648
    invoke-static {v2, v7, v8}, Lcom/umeng/socom/util/BitmapUtils;->getBitmapFromFile(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 650
    invoke-virtual {p0, v5, v10}, Lcom/umeng/socialize/controller/UMYXHandler;->createThumb(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 651
    sget-object v7, Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "#### \u56fe\u7247\u8def\u5f84  : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 653
    :cond_6
    invoke-virtual {v6}, Lcom/umeng/socialize/media/UMImage;->toByte()[B

    move-result-object v7

    iput-object v7, v1, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    .line 655
    iget-object v7, v1, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    if-eqz v7, :cond_1

    iget-object v7, v1, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    array-length v7, v7

    if-lez v7, :cond_1

    .line 658
    iget-object v7, v1, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    invoke-static {v7}, Lcom/umeng/socom/util/BitmapUtils;->getBitmapOptions([B)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    .line 661
    .local v0, "bmpOptions":Landroid/graphics/BitmapFactory$Options;
    iget-object v7, v1, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    const/4 v8, 0x0

    iget-object v9, v1, Lim/yixin/sdk/api/YXImageMessageData;->imageData:[B

    array-length v9, v9

    .line 660
    invoke-static {v7, v8, v9, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 663
    .local v4, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_1

    .line 666
    iget v7, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mThumbSize:I

    iget v8, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mThumbSize:I

    const/4 v9, 0x1

    .line 665
    invoke-static {v4, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 667
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_2
.end method

.method protected getShareMusic(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "shareMusic"    # Lcom/umeng/socialize/media/UMediaObject;
    .param p2, "shareContent"    # Ljava/lang/String;

    .prologue
    .line 707
    move-object v3, p1

    check-cast v3, Lcom/umeng/socialize/media/UMusic;

    .line 710
    .local v3, "uMusic":Lcom/umeng/socialize/media/UMusic;
    new-instance v1, Lim/yixin/sdk/api/YXMusicMessageData;

    invoke-direct {v1}, Lim/yixin/sdk/api/YXMusicMessageData;-><init>()V

    .line 712
    .local v1, "musicData":Lim/yixin/sdk/api/YXMusicMessageData;
    invoke-virtual {v3}, Lcom/umeng/socialize/media/UMusic;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    .line 714
    .local v2, "musicUrl":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v2

    .line 716
    :cond_0
    iput-object v2, v1, Lim/yixin/sdk/api/YXMusicMessageData;->musicUrl:Ljava/lang/String;

    .line 718
    invoke-virtual {v3}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lim/yixin/sdk/api/YXMusicMessageData;->musicDataUrl:Ljava/lang/String;

    .line 726
    new-instance v0, Lim/yixin/sdk/api/YXMessage;

    invoke-direct {v0}, Lim/yixin/sdk/api/YXMessage;-><init>()V

    .line 727
    .local v0, "msg":Lim/yixin/sdk/api/YXMessage;
    iput-object v1, v0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    .line 730
    invoke-virtual {v3}, Lcom/umeng/socialize/media/UMusic;->getTitle()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    .line 733
    iput-object p2, v0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    .line 734
    invoke-virtual {p0, v3}, Lcom/umeng/socialize/controller/UMYXHandler;->getThumbByteArray(Lcom/umeng/socialize/media/UMediaObject;)[B

    move-result-object v4

    iput-object v4, v0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    .line 735
    return-object v0
.end method

.method protected getShareText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "shareContent"    # Ljava/lang/String;

    .prologue
    .line 592
    new-instance v1, Lim/yixin/sdk/api/YXTextMessageData;

    invoke-direct {v1}, Lim/yixin/sdk/api/YXTextMessageData;-><init>()V

    .line 593
    .local v1, "textObj":Lim/yixin/sdk/api/YXTextMessageData;
    iput-object p1, v1, Lim/yixin/sdk/api/YXTextMessageData;->text:Ljava/lang/String;

    .line 596
    new-instance v0, Lim/yixin/sdk/api/YXMessage;

    invoke-direct {v0}, Lim/yixin/sdk/api/YXMessage;-><init>()V

    .line 597
    .local v0, "msg":Lim/yixin/sdk/api/YXMessage;
    iput-object v1, v0, Lim/yixin/sdk/api/YXMessage;->messageData:Lim/yixin/sdk/api/YXMessage$YXMessageData;

    .line 600
    iput-object p1, v0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    .line 601
    return-object v0
.end method

.method protected getShareTextAndImage(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "shareContent"    # Ljava/lang/String;
    .param p2, "shareImage"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 695
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/controller/UMYXHandler;->getShareWebPage(Lcom/umeng/socialize/media/UMediaObject;)Lim/yixin/sdk/api/YXMessage;

    move-result-object v0

    return-object v0
.end method

.method protected getShareVideo(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "shareVideo"    # Lcom/umeng/socialize/media/UMediaObject;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 747
    move-object v1, p1

    check-cast v1, Lcom/umeng/socialize/media/UMVideo;

    .line 749
    .local v1, "umVedio":Lcom/umeng/socialize/media/UMVideo;
    new-instance v2, Lim/yixin/sdk/api/YXVideoMessageData;

    invoke-direct {v2}, Lim/yixin/sdk/api/YXVideoMessageData;-><init>()V

    .line 750
    .local v2, "video":Lim/yixin/sdk/api/YXVideoMessageData;
    invoke-interface {p1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lim/yixin/sdk/api/YXVideoMessageData;->videoUrl:Ljava/lang/String;

    .line 752
    new-instance v0, Lim/yixin/sdk/api/YXMessage;

    invoke-direct {v0, v2}, Lim/yixin/sdk/api/YXMessage;-><init>(Lim/yixin/sdk/api/YXMessage$YXMessageData;)V

    .line 753
    .local v0, "msg":Lim/yixin/sdk/api/YXMessage;
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMVideo;->getTitle()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    .line 754
    iput-object p2, v0, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    .line 756
    invoke-virtual {p0, v1}, Lcom/umeng/socialize/controller/UMYXHandler;->getThumbByteArray(Lcom/umeng/socialize/media/UMediaObject;)[B

    move-result-object v3

    iput-object v3, v0, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    .line 757
    return-object v0
.end method

.method protected getShareWebPage(Lcom/umeng/socialize/media/UMediaObject;)Lim/yixin/sdk/api/YXMessage;
    .locals 8
    .param p1, "webPage"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 337
    const-string v5, ""

    .line 338
    .local v5, "title":Ljava/lang/String;
    const-string v0, ""

    .line 339
    .local v0, "desc":Ljava/lang/String;
    const-string v4, ""

    .line 340
    .local v4, "targetUrl":Ljava/lang/String;
    instance-of v7, p1, Lcom/umeng/socialize/media/UMWebPage;

    if-eqz v7, :cond_1

    move-object v3, p1

    .line 341
    check-cast v3, Lcom/umeng/socialize/media/UMWebPage;

    .line 342
    .local v3, "sharePage":Lcom/umeng/socialize/media/UMWebPage;
    invoke-virtual {v3}, Lcom/umeng/socialize/media/UMWebPage;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 343
    invoke-virtual {v3}, Lcom/umeng/socialize/media/UMWebPage;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-virtual {v3}, Lcom/umeng/socialize/media/UMWebPage;->getTargetUrl()Ljava/lang/String;

    move-result-object v4

    .line 352
    .end local v3    # "sharePage":Lcom/umeng/socialize/media/UMWebPage;
    :cond_0
    :goto_0
    new-instance v6, Lim/yixin/sdk/api/YXWebPageMessageData;

    invoke-direct {v6}, Lim/yixin/sdk/api/YXWebPageMessageData;-><init>()V

    .line 354
    .local v6, "webPageMsgData":Lim/yixin/sdk/api/YXWebPageMessageData;
    invoke-direct {p0, v5}, Lcom/umeng/socialize/controller/UMYXHandler;->checkTitle(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, v4}, Lcom/umeng/socialize/controller/UMYXHandler;->checkTargetUrl(Ljava/lang/String;)V

    .line 358
    iget-object v7, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTargetUrl:Ljava/lang/String;

    iput-object v7, v6, Lim/yixin/sdk/api/YXWebPageMessageData;->webPageUrl:Ljava/lang/String;

    .line 360
    new-instance v1, Lim/yixin/sdk/api/YXMessage;

    invoke-direct {v1, v6}, Lim/yixin/sdk/api/YXMessage;-><init>(Lim/yixin/sdk/api/YXMessage$YXMessageData;)V

    .line 361
    .local v1, "msg":Lim/yixin/sdk/api/YXMessage;
    iget-object v7, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTitle:Ljava/lang/String;

    iput-object v7, v1, Lim/yixin/sdk/api/YXMessage;->title:Ljava/lang/String;

    .line 362
    iput-object v0, v1, Lim/yixin/sdk/api/YXMessage;->description:Ljava/lang/String;

    .line 364
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/UMYXHandler;->getThumbByteArray(Lcom/umeng/socialize/media/UMediaObject;)[B

    move-result-object v7

    iput-object v7, v1, Lim/yixin/sdk/api/YXMessage;->thumbData:[B

    .line 366
    return-object v1

    .line 345
    .end local v1    # "msg":Lim/yixin/sdk/api/YXMessage;
    .end local v6    # "webPageMsgData":Lim/yixin/sdk/api/YXWebPageMessageData;
    :cond_1
    instance-of v7, p1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v7, :cond_0

    move-object v2, p1

    .line 346
    check-cast v2, Lcom/umeng/socialize/media/UMImage;

    .line 347
    .local v2, "shareImage":Lcom/umeng/socialize/media/UMImage;
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 348
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mShareContent:Ljava/lang/String;

    .line 349
    invoke-virtual {v2}, Lcom/umeng/socialize/media/UMImage;->getTargetUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTargetUrl:Ljava/lang/String;

    return-object v0
.end method

.method protected haveCallback(Landroid/content/Context;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 813
    if-nez p1, :cond_0

    .line 814
    const/4 v2, 0x0

    .line 826
    :goto_0
    return v2

    .line 816
    :cond_0
    const/4 v2, 0x1

    .line 817
    .local v2, "haveCallback":Z
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 818
    const-string v4, ".yxapi.YXEntryActivity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 817
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    .local v0, "callbackClassName":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    :catch_0
    move-exception v1

    .line 822
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    .line 823
    sget-object v3, Lcom/umeng/socialize/controller/UMYXHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 824
    const-string v5, " \u7c7b\u6ca1\u6709\u627e\u5230. \u8bf7\u628ayixin\u6587\u4ef6\u5939\u4e2d\u7684yxapi\u76ee\u5f55\u62f7\u8d1d\u5230\u60a8\u7684\u5305\u76ee\u5f55\u4e0b."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 823
    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected initPlatformConfig()V
    .locals 3

    .prologue
    .line 200
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->isToCircle:Z

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 202
    const-string v2, "umeng_socialize_yixin_circle"

    .line 201
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mIcon:I

    .line 203
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 204
    const-string v2, "umeng_socialize_yixin_circle_gray"

    .line 203
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mGrayIcon:I

    .line 205
    const-string v0, "\u6613\u4fe1\u670b\u53cb\u5708"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mShowWord:Ljava/lang/String;

    .line 206
    const-string v0, "yixin_circle"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mKeyWord:Ljava/lang/String;

    .line 216
    :goto_0
    const/high16 v0, 0x10000

    iput v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mThumbLimit:I

    .line 217
    const/16 v0, 0xc8

    iput v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mThumbSize:I

    .line 218
    const/16 v0, 0x15

    iput v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mPlatformOpId:I

    .line 219
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 209
    const-string v2, "umeng_socialize_yixin"

    .line 208
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mIcon:I

    .line 210
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 211
    const-string v2, "umeng_socialize_yixin_gray"

    .line 210
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mGrayIcon:I

    .line 212
    const-string v0, "\u6613\u4fe1"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mShowWord:Ljava/lang/String;

    .line 213
    const-string v0, "yixin"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mKeyWord:Ljava/lang/String;

    goto :goto_0
.end method

.method public isClientInstalled()Z
    .locals 1

    .prologue
    .line 228
    sget-object v0, Lcom/umeng/socialize/controller/UMYXHandler;->mYXApi:Lim/yixin/sdk/api/IYXAPI;

    invoke-interface {v0}, Lim/yixin/sdk/api/IYXAPI;->isYXAppInstalled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 231
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowWaitingDlg()Z
    .locals 1

    .prologue
    .line 401
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->isShowWaitingDlg:Z

    return v0
.end method

.method protected sendReport(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 777
    const v1, 0x9c42

    .line 779
    .local v1, "statusCode":I
    iget-boolean v2, p0, Lcom/umeng/socialize/controller/UMYXHandler;->isToCircle:Z

    if-eqz v2, :cond_2

    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 781
    .local v0, "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 783
    :try_start_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    .line 784
    const/16 v3, 0x15

    .line 783
    invoke-static {v2, v0, v3}, Lcom/umeng/socom/util/StatisticsDataUtils;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    :goto_1
    const/16 v1, 0xc8

    .line 791
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/umeng/socialize/controller/UMYXHandler;->haveCallback(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 793
    sget-object v2, Lcom/umeng/socialize/controller/UMYXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {p0, v0, v1, v2}, Lcom/umeng/socialize/controller/UMYXHandler;->fireAllListenersOnComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 795
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 796
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/controller/UMYXHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v4, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    iget-object v5, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mShareContent:Ljava/lang/String;

    .line 797
    iget-object v6, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    iget-boolean v2, p0, Lcom/umeng/socialize/controller/UMYXHandler;->isToCircle:Z

    if-eqz v2, :cond_3

    const-string v2, "yxtimeline"

    .line 796
    :goto_2
    invoke-static {v3, v4, v5, v6, v2}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 802
    :cond_1
    return-void

    .line 780
    .end local v0    # "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    :cond_2
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto :goto_0

    .line 797
    .restart local v0    # "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    :cond_3
    const-string v2, "yxsession"

    goto :goto_2

    .line 785
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected setSelectedPlatform()V
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMYXHandler;->isToCircle:Z

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 326
    :goto_0
    return-void

    .line 324
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->YIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetUrl"    # Ljava/lang/String;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMYXHandler;->mTargetUrl:Ljava/lang/String;

    .line 773
    return-void
.end method

.method protected shareAsync(Lcom/umeng/socialize/media/UMediaObject$MediaType;)V
    .locals 2
    .param p1, "mediaType"    # Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .prologue
    .line 313
    new-instance v0, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;-><init>(Lcom/umeng/socialize/controller/UMYXHandler;Lcom/umeng/socialize/media/UMediaObject$MediaType;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/UMYXHandler$ShareAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 314
    return-void
.end method
