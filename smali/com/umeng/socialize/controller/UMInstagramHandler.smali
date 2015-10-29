.class public Lcom/umeng/socialize/controller/UMInstagramHandler;
.super Lcom/umeng/socialize/controller/CustomHandler;
.source "UMInstagramHandler.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/CustomHandler;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    .line 39
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .prologue
    .line 53
    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 63
    return-void
.end method

.method protected buildMediaObject(Lcom/umeng/socialize/media/UMediaObject;)Lcom/umeng/socialize/media/UMediaObject;
    .locals 1
    .param p1, "media"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 148
    instance-of v0, p1, Lcom/umeng/socialize/media/InstagramShareContent;

    if-eqz v0, :cond_0

    .line 149
    check-cast p1, Lcom/umeng/socialize/media/InstagramShareContent;

    .end local p1    # "media":Lcom/umeng/socialize/media/UMediaObject;
    invoke-virtual {p1}, Lcom/umeng/socialize/media/InstagramShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p1

    .line 151
    .restart local p1    # "media":Lcom/umeng/socialize/media/UMediaObject;
    :cond_0
    return-object p1
.end method

.method protected doShare(Ljava/lang/Object;Lcom/umeng/socialize/media/UMediaObject$MediaType;)Z
    .locals 5
    .param p1, "msg"    # Ljava/lang/Object;
    .param p2, "type"    # Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "imgPath":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v1, "shareIntent":Landroid/content/Intent;
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v2, "com.instagram.android"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v2, "android.intent.extra.STREAM"

    .line 170
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 169
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 172
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "### \u5206\u4eab\u5230instagram, image path = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string v2, "image/*"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 175
    const/4 v2, 0x0

    return v2
.end method

.method protected getShareImage(Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
    .locals 5
    .param p1, "shareImage"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 96
    move-object v0, p1

    check-cast v0, Lcom/umeng/socialize/media/UMImage;

    .line 97
    .local v0, "image":Lcom/umeng/socialize/media/UMImage;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 98
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "imgPath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    invoke-static {v1}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    .end local v1    # "imgPath":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 108
    .restart local v1    # "imgPath":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 109
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    const-string v3, "\u62b1\u6b49,Instagram\u53ea\u652f\u6301\u672c\u5730\u56fe\u7247\u5206\u4eab..."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 112
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getShareMusic(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "shareMusic"    # Lcom/umeng/socialize/media/UMediaObject;
    .param p2, "shareContent"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getShareText(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "shareContent"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getShareTextAndImage(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;
    .locals 1
    .param p1, "shareContent"    # Ljava/lang/String;
    .param p2, "shareImage"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 117
    invoke-virtual {p0, p2}, Lcom/umeng/socialize/controller/UMInstagramHandler;->getShareImage(Lcom/umeng/socialize/media/UMediaObject;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getShareVideo(Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "shareVideo"    # Lcom/umeng/socialize/media/UMediaObject;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initPlatformConfig()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 73
    const-string v2, "umeng_socialize_instagram_on"

    .line 72
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mIcon:I

    .line 74
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 75
    const-string v2, "umeng_socialize_instagram_off"

    .line 74
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mGrayIcon:I

    .line 76
    const-string v0, "Instagram"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mShowWord:Ljava/lang/String;

    .line 77
    const-string v0, "instagram"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mKeyWord:Ljava/lang/String;

    .line 80
    const/16 v0, 0x17

    iput v0, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mPlatformOpId:I

    .line 81
    return-void
.end method

.method public isClientInstalled()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 137
    const-string v1, "com.instagram.android"

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setSelectedPlatform()V
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->INSTAGRAM:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 203
    return-void
.end method

.method protected shareAsync(Lcom/umeng/socialize/media/UMediaObject$MediaType;)V
    .locals 5
    .param p1, "mediaType"    # Lcom/umeng/socialize/media/UMediaObject$MediaType;

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/UMInstagramHandler;->createMessage(Lcom/umeng/socialize/media/UMediaObject$MediaType;)Ljava/lang/Object;

    move-result-object v1

    .line 187
    .local v1, "msg":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 188
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->TAG:Ljava/lang/String;

    const-string v3, "\u5206\u4eab\u5230Instagram\u7684\u56fe\u7247\u4e0d\u5b58\u5728!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 193
    .restart local v0    # "file":Ljava/io/File;
    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/umeng/socialize/controller/UMInstagramHandler;->doShare(Ljava/lang/Object;Lcom/umeng/socialize/media/UMediaObject$MediaType;)Z

    .line 194
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/umeng/socialize/controller/UMInstagramHandler;->sendReport(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 195
    .end local v0    # "file":Ljava/io/File;
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMInstagramHandler;->mContext:Landroid/content/Context;

    const-string v3, "\u62b1\u6b49,Instagram\u53ea\u652f\u6301\u672c\u5730\u56fe\u7247\u5206\u4eab..."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
