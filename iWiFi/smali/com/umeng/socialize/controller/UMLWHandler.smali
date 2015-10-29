.class public Lcom/umeng/socialize/controller/UMLWHandler;
.super Lcom/umeng/socialize/controller/CustomHandler;
.source "UMLWHandler.java"


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mContentURL:Ljava/lang/String;

.field private mDefaultIcon:I

.field private mDefaultLWShareApi:I

.field private mDefaultShareContent:Ljava/lang/String;

.field private mLWAPI:Lcom/laiwang/sdk/openapi/ILWAPI;

.field private mLaiWangDynamicKey:Ljava/lang/String;

.field private mLaiWangKey:Ljava/lang/String;

.field private mMessageFrom:Ljava/lang/String;

.field private msgFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appID"    # Ljava/lang/String;
    .param p3, "appKey"    # Ljava/lang/String;
    .param p4, "contentUrl"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/CustomHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mDefaultIcon:I

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mLWAPI:Lcom/laiwang/sdk/openapi/ILWAPI;

    .line 42
    const v0, 0x20140101

    iput v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mDefaultLWShareApi:I

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mDefaultShareContent:Ljava/lang/String;

    .line 44
    const-string v0, "laiwang"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->msgFlag:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mLaiWangKey:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mLaiWangDynamicKey:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mAppKey:Ljava/lang/String;

    .line 66
    iput-object p4, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContentURL:Ljava/lang/String;

    .line 68
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8bbe\u7f6eAppId\u6216\u8005AppKey\u4e3a\u7a7a\uff0c\u6b63\u5728\u4f7f\u7528\u53cb\u76df\u9ed8\u8ba4\u7684\u6765\u5f80AppId\uff0cAppKey"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const-string v0, "laiwangd497e70d4"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mAppId:Ljava/lang/String;

    .line 71
    const-string v0, "d497e70d4c3e4efeab1381476bac4c5e"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mAppKey:Ljava/lang/String;

    .line 73
    :cond_1
    return-void
.end method

.method private convertShareData(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 4
    .param p1, "media"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 269
    const/4 v1, 0x0

    .line 271
    .local v1, "tmpMedia":Lcom/umeng/socialize/media/UMediaObject;
    const/4 v0, 0x0

    .line 272
    .local v0, "lWangShareContent":Lcom/umeng/socialize/media/BaseShareContent;
    iget-boolean v2, p0, Lcom/umeng/socialize/controller/UMLWHandler;->isToCircle:Z

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 273
    check-cast v0, Lcom/umeng/socialize/media/LWDynamicShareContent;

    .line 278
    :goto_0
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v2, v3, :cond_2

    .line 279
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    .line 285
    :cond_0
    :goto_1
    return-object v1

    :cond_1
    move-object v0, p1

    .line 275
    check-cast v0, Lcom/umeng/socialize/media/LWShareContent;

    goto :goto_0

    .line 280
    :cond_2
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v2, v3, :cond_3

    .line 281
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object v1

    .line 282
    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v2, v3, :cond_0

    .line 283
    invoke-virtual {v0}, Lcom/umeng/socialize/media/BaseShareContent;->getShareVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object v1

    goto :goto_1
.end method

.method private validateData()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    const-string v2, "\u8bf7\u8bbe\u7f6e\u6807\u9898..."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 98
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContentURL:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    const-string v2, "\u8bf7\u8bbe\u7f6econtentURL..."

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 98
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected buildMediaObject(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 5
    .param p1, "media"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 231
    move-object v3, p1

    .line 233
    .local v3, "tmpMedia":Lcom/umeng/socialize/media/UMediaObject;
    const-string v2, ""

    .line 234
    .local v2, "title":Ljava/lang/String;
    instance-of v4, p1, Lcom/umeng/socialize/media/LWShareContent;

    if-eqz v4, :cond_2

    move-object v1, p1

    .line 235
    check-cast v1, Lcom/umeng/socialize/media/LWShareContent;

    .line 236
    .local v1, "lwShareContent":Lcom/umeng/socialize/media/LWShareContent;
    invoke-virtual {v1}, Lcom/umeng/socialize/media/LWShareContent;->getMessageFrom()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mMessageFrom:Ljava/lang/String;

    .line 237
    invoke-virtual {v1}, Lcom/umeng/socialize/media/LWShareContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMLWHandler;->convertShareData(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v3

    .line 239
    invoke-virtual {v1}, Lcom/umeng/socialize/media/LWShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mShareContent:Ljava/lang/String;

    .line 250
    .end local v1    # "lwShareContent":Lcom/umeng/socialize/media/LWShareContent;
    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 251
    iput-object v2, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mTitle:Ljava/lang/String;

    .line 253
    :cond_1
    return-object v3

    .line 240
    :cond_2
    instance-of v4, p1, Lcom/umeng/socialize/media/LWDynamicShareContent;

    if-eqz v4, :cond_0

    move-object v0, p1

    .line 242
    check-cast v0, Lcom/umeng/socialize/media/LWDynamicShareContent;

    .line 244
    .local v0, "lwDynamicShareContent":Lcom/umeng/socialize/media/LWDynamicShareContent;
    invoke-virtual {v0}, Lcom/umeng/socialize/media/LWDynamicShareContent;->getMessageFrom()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mMessageFrom:Ljava/lang/String;

    .line 245
    invoke-virtual {v0}, Lcom/umeng/socialize/media/LWDynamicShareContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMLWHandler;->convertShareData(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v3

    .line 247
    invoke-virtual {v0}, Lcom/umeng/socialize/media/LWDynamicShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mShareContent:Ljava/lang/String;

    goto :goto_0
.end method

.method protected doShare(Ljava/lang/Object;Lcom/umeng/socialize/media/UMediaObject$MediaType;)Z
    .locals 6
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "type"    # Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "result":Z
    if-nez p1, :cond_0

    move v2, v1

    .line 322
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 310
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMLWHandler;->validateData()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v1

    .line 311
    .restart local v2    # "result":I
    goto :goto_0

    .end local v2    # "result":I
    :cond_1
    move-object v0, p1

    .line 314
    check-cast v0, Lcom/laiwang/sdk/message/IILWMessage;

    .line 316
    .local v0, "lwMessage":Lcom/laiwang/sdk/message/IILWMessage;
    if-eqz v0, :cond_2

    .line 317
    const-string v3, "laiwang.share.sdk.1111"

    invoke-interface {v0, v3}, Lcom/laiwang/sdk/message/IILWMessage;->setMessageActiviy(Ljava/lang/String;)V

    .line 318
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mLWAPI:Lcom/laiwang/sdk/openapi/ILWAPI;

    iget-object v4, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    .line 319
    const v5, 0x20131023

    .line 318
    invoke-interface {v3, v4, v0, v5}, Lcom/laiwang/sdk/openapi/ILWAPI;->transactData(Landroid/content/Context;Lcom/laiwang/sdk/message/IILWMessage;I)Z

    move-result v1

    .line 320
    const/16 v3, 0x14

    invoke-virtual {p0, v3}, Lcom/umeng/socialize/controller/UMLWHandler;->setPlatformOpId(I)V

    :cond_2
    move v2, v1

    .line 322
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method protected getMediaType(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject$MediaType;
    .locals 2
    .param p1, "shareMedia"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 400
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT_IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 401
    .local v0, "mediaType":Lcom/umeng/socialize/media/UMediaObject$MediaType;
    if-eqz p1, :cond_0

    .line 402
    instance-of v1, p1, Lcom/umeng/socialize/media/UMusic;

    if-eqz v1, :cond_1

    .line 403
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .line 408
    :cond_0
    :goto_0
    return-object v0

    .line 404
    :cond_1
    instance-of v1, p1, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v1, :cond_0

    .line 405
    sget-object v0, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    goto :goto_0
.end method

.method protected getShareImage(Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "shareImage"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 448
    const/4 v0, 0x0

    .line 449
    .local v0, "lwMessage":Lcom/laiwang/sdk/message/IILWMessage;
    return-object v0
.end method

.method protected getShareMusic(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 19
    .param p1, "shareMusic"    # Lcom/umeng/socialize/media/UMediaObject;
    .param p2, "shareContent"    # Ljava/lang/String;

    .prologue
    .line 517
    const/16 v18, 0x0

    .line 518
    .local v18, "musicMessage":Lcom/laiwang/sdk/message/IILWMessage;
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/umeng/socialize/media/UMusic;

    if-eqz v1, :cond_1

    move-object/from16 v17, p1

    .line 519
    check-cast v17, Lcom/umeng/socialize/media/UMusic;

    .line 521
    .local v17, "music":Lcom/umeng/socialize/media/UMusic;
    const-string v5, ""

    .line 522
    .local v5, "thumbPath":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMusic;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 523
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMusic;->getThumb()Ljava/lang/String;

    move-result-object v5

    .line 535
    :cond_0
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMusic;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 536
    const/4 v4, 0x3

    .line 538
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMusic;->toUrl()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/umeng/socialize/controller/UMLWHandler;->mMessageFrom:Ljava/lang/String;

    const-wide v12, 0x400b333333333333L    # 3.4

    .line 539
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/umeng/socialize/controller/UMLWHandler;->msgFlag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/umeng/socialize/controller/UMLWHandler;->isToCircle:Z

    if-eqz v2, :cond_5

    const-string v15, "DYNAMIC2"

    :goto_1
    move-object/from16 v2, p2

    move-object/from16 v3, p2

    move-object/from16 v6, p2

    move-object v7, v5

    move-object/from16 v8, p2

    .line 535
    invoke-static/range {v1 .. v15}, Lcom/laiwang/sdk/openapi/LWAPIFactory;->createMediaMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/message/IILWMessage;

    move-result-object v18

    .line 542
    .end local v5    # "thumbPath":Ljava/lang/String;
    .end local v17    # "music":Lcom/umeng/socialize/media/UMusic;
    :cond_1
    return-object v18

    .line 524
    .restart local v5    # "thumbPath":Ljava/lang/String;
    .restart local v17    # "music":Lcom/umeng/socialize/media/UMusic;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v16

    .line 526
    .local v16, "image":Lcom/umeng/socialize/media/UMImage;
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 527
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 529
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 530
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v5

    .line 531
    goto :goto_0

    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 532
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 540
    .end local v16    # "image":Lcom/umeng/socialize/media/UMImage;
    :cond_5
    const-string v15, "SMS"

    goto :goto_1
.end method

.method protected getShareText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "shareContent"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-boolean v2, p0, Lcom/umeng/socialize/controller/UMLWHandler;->isToCircle:Z

    if-eqz v2, :cond_0

    const-string v1, "DYNAMIC2"

    .line 428
    .local v1, "type":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v1}, Lcom/laiwang/sdk/openapi/LWAPIFactory;->createTextMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/message/IILWMessage;

    move-result-object v0

    .line 430
    .local v0, "lwMessage":Lcom/laiwang/sdk/message/IILWMessage;
    return-object v0

    .line 427
    .end local v0    # "lwMessage":Lcom/laiwang/sdk/message/IILWMessage;
    .end local v1    # "type":Ljava/lang/String;
    :cond_0
    const-string v1, "SMS"

    goto :goto_0
.end method

.method protected getShareTextAndImage(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
    .locals 11
    .param p1, "shareContent"    # Ljava/lang/String;
    .param p2, "shareImage"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 470
    const/4 v10, 0x0

    .line 471
    .local v10, "lwMessage":Lcom/laiwang/sdk/message/IILWMessage;
    instance-of v0, p2, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_1

    move-object v9, p2

    .line 472
    check-cast v9, Lcom/umeng/socialize/media/UMImage;

    .line 473
    .local v9, "image":Lcom/umeng/socialize/media/UMImage;
    invoke-virtual {v9}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    const/16 v0, 0xf

    invoke-virtual {v9, v0}, Lcom/umeng/socialize/media/UMImage;->setMaxWaitTimes(I)V

    .line 475
    invoke-virtual {v9}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 477
    :cond_0
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->isToCircle:Z

    if-eqz v0, :cond_2

    const-string v8, "DYNAMIC2"

    .line 479
    .local v8, "type":Ljava/lang/String;
    :goto_0
    invoke-interface {p2}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mTitle:Ljava/lang/String;

    .line 482
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContentURL:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v9}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual {v9}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mMessageFrom:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p1

    .line 481
    invoke-static/range {v0 .. v8}, Lcom/laiwang/sdk/openapi/LWAPIFactory;->createComMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/message/IILWMessage;

    move-result-object v10

    .line 497
    .end local v8    # "type":Ljava/lang/String;
    .end local v9    # "image":Lcom/umeng/socialize/media/UMImage;
    :cond_1
    :goto_1
    return-object v10

    .line 478
    .restart local v9    # "image":Lcom/umeng/socialize/media/UMImage;
    :cond_2
    const-string v8, "SMS"

    goto :goto_0

    .line 486
    .restart local v8    # "type":Ljava/lang/String;
    :cond_3
    invoke-virtual {v9}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v5

    .line 489
    .local v5, "path":Ljava/lang/String;
    iget v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mThumbSize:I

    iget v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mThumbSize:I

    invoke-static {v5, v0, v1}, Lcom/umeng/socom/util/BitmapUtils;->loadImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 490
    .local v4, "thumbBitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mTitle:Ljava/lang/String;

    .line 491
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContentURL:Ljava/lang/String;

    .line 492
    iget-object v7, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mMessageFrom:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p1

    move-object v6, v5

    .line 490
    invoke-static/range {v0 .. v8}, Lcom/laiwang/sdk/openapi/LWAPIFactory;->createComMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/message/IILWMessage;

    move-result-object v10

    .line 493
    const-string v1, ""

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "### \u6765\u5f80\u56fe\u7247 = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",  thumbbitmap = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez v4, :cond_4

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected getShareVideo(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 19
    .param p1, "shareVideo"    # Lcom/umeng/socialize/media/UMediaObject;
    .param p2, "shareContent"    # Ljava/lang/String;

    .prologue
    .line 562
    const/16 v18, 0x0

    .line 563
    .local v18, "videoMessage":Lcom/laiwang/sdk/message/IILWMessage;
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v1, :cond_1

    move-object/from16 v17, p1

    .line 564
    check-cast v17, Lcom/umeng/socialize/media/UMVideo;

    .line 565
    .local v17, "video":Lcom/umeng/socialize/media/UMVideo;
    const-string v5, ""

    .line 566
    .local v5, "thumbPath":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMVideo;->getThumb()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 567
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMVideo;->getThumb()Ljava/lang/String;

    move-result-object v5

    .line 579
    :cond_0
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMVideo;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 580
    const/4 v4, 0x4

    .line 582
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMVideo;->toUrl()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/umeng/socialize/controller/UMLWHandler;->mMessageFrom:Ljava/lang/String;

    const-wide v12, 0x400b333333333333L    # 3.4

    .line 583
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/umeng/socialize/controller/UMLWHandler;->msgFlag:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/umeng/socialize/controller/UMLWHandler;->isToCircle:Z

    if-eqz v2, :cond_5

    const-string v15, "DYNAMIC2"

    :goto_1
    move-object/from16 v2, p2

    move-object/from16 v3, p2

    move-object/from16 v6, p2

    move-object v7, v5

    move-object/from16 v8, p2

    .line 579
    invoke-static/range {v1 .. v15}, Lcom/laiwang/sdk/openapi/LWAPIFactory;->createMediaMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/message/IILWMessage;

    move-result-object v18

    .line 586
    .end local v5    # "thumbPath":Ljava/lang/String;
    .end local v17    # "video":Lcom/umeng/socialize/media/UMVideo;
    :cond_1
    return-object v18

    .line 568
    .restart local v5    # "thumbPath":Ljava/lang/String;
    .restart local v17    # "video":Lcom/umeng/socialize/media/UMVideo;
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 569
    invoke-virtual/range {v17 .. v17}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v16

    .line 570
    .local v16, "image":Lcom/umeng/socialize/media/UMImage;
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v1

    if-nez v1, :cond_3

    .line 571
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 573
    :cond_3
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 574
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v5

    .line 575
    goto :goto_0

    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 576
    invoke-virtual/range {v16 .. v16}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 584
    .end local v16    # "image":Lcom/umeng/socialize/media/UMImage;
    :cond_5
    const-string v15, "SMS"

    goto :goto_1
.end method

.method protected initPlatformConfig()V
    .locals 6

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->isToCircle:Z

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 158
    const-string v2, "umeng_socialize_laiwang_dynamic"

    .line 157
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mIcon:I

    .line 159
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 160
    const-string v2, "umeng_socialize_laiwang_dynamic_gray"

    .line 159
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mGrayIcon:I

    .line 170
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 172
    const-string v3, "umeng_socialize_laiwang_default_content"

    .line 171
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mDefaultShareContent:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 175
    const-string v3, "umeng_socialize_text_laiwang_key"

    .line 174
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mLaiWangKey:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 178
    const-string v3, "umeng_socialize_text_laiwang_dynamic_key"

    .line 177
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mLaiWangDynamicKey:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mDefaultIcon:I

    .line 181
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->isToCircle:Z

    if-eqz v0, :cond_1

    const-string v0, "laiwang_dynamic"

    :goto_1
    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mKeyWord:Ljava/lang/String;

    .line 183
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->isToCircle:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mLaiWangDynamicKey:Ljava/lang/String;

    :goto_2
    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mShowWord:Ljava/lang/String;

    .line 184
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->isToCircle:Z

    if-eqz v0, :cond_3

    const-string v0, "laiwang_dynamic"

    :goto_3
    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->msgFlag:Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 187
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 188
    .local v5, "label":Ljava/lang/String;
    const-string v0, "."

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    const-string v5, "\u56de\u5230\u5e94\u7528"

    .line 193
    :goto_4
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 194
    .local v4, "packageNmae":Ljava/lang/String;
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mAppId:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mAppKey:Ljava/lang/String;

    .line 195
    iget v3, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mDefaultLWShareApi:I

    .line 194
    invoke-static/range {v0 .. v5}, Lcom/laiwang/sdk/openapi/LWAPIFactory;->createLWAPI(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/laiwang/sdk/openapi/ILWAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mLWAPI:Lcom/laiwang/sdk/openapi/ILWAPI;

    .line 196
    return-void

    .line 162
    .end local v4    # "packageNmae":Ljava/lang/String;
    .end local v5    # "label":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 163
    const-string v2, "umeng_socialize_laiwang"

    .line 162
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mIcon:I

    .line 164
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 165
    const-string v2, "umeng_socialize_laiwang_gray"

    .line 164
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mGrayIcon:I

    goto/16 :goto_0

    .line 182
    :cond_1
    const-string v0, "laiwang"

    goto :goto_1

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mLaiWangKey:Ljava/lang/String;

    goto :goto_2

    .line 184
    :cond_3
    const-string v0, "laiwang"

    goto :goto_3

    .line 191
    .restart local v5    # "label":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u56de\u5230"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4
.end method

.method public isClientInstalled()Z
    .locals 2

    .prologue
    .line 212
    const-string v0, "com.alibaba.android.babylon"

    .line 213
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    .line 212
    invoke-static {v0, v1}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setContentURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentURL"    # Ljava/lang/String;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContentURL:Ljava/lang/String;

    .line 127
    return-void
.end method

.method public setMessageFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "messageFrom"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mMessageFrom:Ljava/lang/String;

    .line 141
    return-void
.end method

.method protected setSelectedPlatform()V
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMLWHandler;->isToCircle:Z

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG_DYNAMIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 343
    :goto_0
    return-void

    .line 341
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->LAIWANG:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mTitle:Ljava/lang/String;

    .line 113
    return-void
.end method

.method protected shareAsync(Lcom/umeng/socialize/media/UMediaObject$MediaType;)V
    .locals 6
    .param p1, "mediaType"    # Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMLWHandler;->validateData()Z

    move-result v3

    if-nez v3, :cond_0

    .line 381
    :goto_0
    return-void

    .line 364
    :cond_0
    sget-object v3, Lcom/umeng/socialize/media/UMediaObject$MediaType;->TEXT_IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne p1, v3, :cond_2

    .line 365
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 366
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mDefaultShareContent:Ljava/lang/String;

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mShareContent:Ljava/lang/String;

    .line 369
    :cond_1
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v3, :cond_2

    .line 370
    new-instance v3, Lcom/umeng/socialize/media/UMImage;

    iget-object v4, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mDefaultIcon:I

    invoke-direct {v3, v4, v5}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMLWHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 372
    const-wide/16 v3, 0x258

    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/UMLWHandler;->createMessage(Lcom/umeng/socialize/media/UMediaObject$MediaType;)Ljava/lang/Object;

    move-result-object v2

    .line 379
    .local v2, "message":Ljava/lang/Object;
    invoke-virtual {p0, v2, p1}, Lcom/umeng/socialize/controller/UMLWHandler;->doShare(Ljava/lang/Object;Lcom/umeng/socialize/media/UMediaObject$MediaType;)Z

    move-result v1

    .line 380
    .local v1, "flag":Z
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/umeng/socialize/controller/UMLWHandler;->sendReport(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 373
    .end local v1    # "flag":Z
    .end local v2    # "message":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
