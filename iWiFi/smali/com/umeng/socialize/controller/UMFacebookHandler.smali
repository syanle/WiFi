.class public Lcom/umeng/socialize/controller/UMFacebookHandler;
.super Lcom/umeng/socialize/controller/UMSsoHandler;
.source "UMFacebookHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;,
        Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$umeng$socialize$controller$UMFacebookHandler$PendingAction:[I = null

.field private static final PERMISSION:Ljava/lang/String; = "publish_actions, user_photos, read_stream"


# instance fields
.field private final PENDING_ACTION_BUNDLE_KEY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TARGET_URL:Ljava/lang/String;

.field private isChineseOS:Z

.field private mActivity:Landroid/app/Activity;

.field private mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field private mCaption:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDialogCallback:Lcom/facebook/widget/FacebookDialog$Callback;

.field private mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

.field private mPendingAction:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

.field private mPlatformClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

.field private mPostParams:Landroid/os/Bundle;

.field private mPostType:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

.field private mShareContent:Ljava/lang/String;

.field private mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

.field private mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field private mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

.field private mStatusCallback:Lcom/facebook/Session$StatusCallback;

.field private mTargetUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

.field private mUploadedImgUrl:Ljava/lang/String;


# direct methods
.method static synthetic $SWITCH_TABLE$com$umeng$socialize$controller$UMFacebookHandler$PendingAction()[I
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/umeng/socialize/controller/UMFacebookHandler;->$SWITCH_TABLE$com$umeng$socialize$controller$UMFacebookHandler$PendingAction:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->values()[Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->NONE:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->POST_PHOTO:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->POST_STATUS_UPDATE:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/umeng/socialize/controller/UMFacebookHandler;->$SWITCH_TABLE$com$umeng$socialize$controller$UMFacebookHandler$PendingAction:[I

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

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 239
    sget-object v0, Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;->FEED:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/controller/UMFacebookHandler;-><init>(Landroid/app/Activity;Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;)V

    .line 240
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "postType"    # Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    .prologue
    const/4 v4, 0x0

    .line 247
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMSsoHandler;-><init>()V

    .line 80
    iput-object v4, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    .line 85
    iput-object v4, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 90
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 99
    iput-object v4, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 101
    const-string v3, "com.umeng.share:PendingAction"

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->PENDING_ACTION_BUNDLE_KEY:Ljava/lang/String;

    .line 106
    const-string v3, "http://www.umeng.com/social"

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TARGET_URL:Ljava/lang/String;

    .line 108
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    .line 142
    sget-object v3, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->NONE:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    .line 147
    sget-object v3, Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;->FEED:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    .line 156
    const-string v3, ""

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;

    .line 161
    const-string v3, ""

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 166
    const-string v3, ""

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mCaption:Ljava/lang/String;

    .line 170
    const-string v3, ""

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mDescription:Ljava/lang/String;

    .line 175
    const-string v3, ""

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    .line 179
    const-string v3, ""

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTitle:Ljava/lang/String;

    .line 183
    iput-object v4, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 188
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    .line 193
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->isChineseOS:Z

    .line 202
    iput-object v4, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 206
    new-instance v3, Lcom/umeng/socialize/controller/UMFacebookHandler$1;

    invoke-direct {v3, p0}, Lcom/umeng/socialize/controller/UMFacebookHandler$1;-><init>(Lcom/umeng/socialize/controller/UMFacebookHandler;)V

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mStatusCallback:Lcom/facebook/Session$StatusCallback;

    .line 218
    new-instance v3, Lcom/umeng/socialize/controller/UMFacebookHandler$2;

    invoke-direct {v3, p0}, Lcom/umeng/socialize/controller/UMFacebookHandler$2;-><init>(Lcom/umeng/socialize/controller/UMFacebookHandler;)V

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mDialogCallback:Lcom/facebook/widget/FacebookDialog$Callback;

    .line 248
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 250
    new-instance v3, Lcom/facebook/UiLifecycleHelper;

    iget-object v4, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v3, v4, v5}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, "saveBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 253
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 256
    if-eqz v2, :cond_0

    .line 257
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v4, "#### facebook onCreate Bundle"

    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v3, "com.umeng.share:PendingAction"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "name":Ljava/lang/String;
    invoke-static {v1}, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->valueOf(Ljava/lang/String;)Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    move-result-object v3

    iput-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    .line 265
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v3, v2}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 266
    iput-object p2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    .line 268
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->initLocalInfo()V

    .line 269
    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/controller/UMFacebookHandler;Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 953
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/UMFacebookHandler;->onStatusChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$1(Lcom/umeng/socialize/controller/UMFacebookHandler;)Lcom/facebook/UiLifecycleHelper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    return-object v0
.end method

.method static synthetic access$2(Lcom/umeng/socialize/controller/UMFacebookHandler;Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/UMFacebookHandler;->handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    return-void
.end method

.method static synthetic access$4(Lcom/umeng/socialize/controller/UMFacebookHandler;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/umeng/socialize/controller/UMFacebookHandler;)V
    .locals 0

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->executePostStatus()V

    return-void
.end method

.method static synthetic access$6(Lcom/umeng/socialize/controller/UMFacebookHandler;Lcom/facebook/Response;)V
    .locals 0

    .prologue
    .line 736
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMFacebookHandler;->handleResponse(Lcom/facebook/Response;)V

    return-void
.end method

.method private addParams()V
    .locals 3

    .prologue
    .line 627
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 628
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    .line 635
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v1, "message"

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v1, "name"

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v1, "caption"

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v1, "description"

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v1, "link"

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "### facebook \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd : message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 654
    const-string v2, ", title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caption : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mCaption:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-static {v0, v1}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    goto :goto_0
.end method

.method private build()Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 5

    .prologue
    .line 292
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 293
    const-string v4, "umeng_socialize_facebook"

    .line 292
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 295
    .local v1, "icon":I
    new-instance v0, Lcom/umeng/socialize/bean/CustomPlatform;

    .line 296
    const-string v2, "facebook"

    .line 295
    invoke-direct {v0, v2, v1}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;I)V

    .line 297
    .local v0, "facebookPlatform":Lcom/umeng/socialize/bean/CustomPlatform;
    sget-object v2, Lcom/umeng/socialize/bean/APP_PLATFORM;->FACEBOOK:Lcom/umeng/socialize/bean/APP_PLATFORM;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/APP_PLATFORM;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mTag:Ljava/lang/String;

    .line 298
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 299
    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v4, "umeng_socialize_facebook_off"

    .line 298
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mGrayIcon:I

    .line 303
    new-instance v2, Lcom/umeng/socialize/controller/UMFacebookHandler$3;

    invoke-direct {v2, p0}, Lcom/umeng/socialize/controller/UMFacebookHandler$3;-><init>(Lcom/umeng/socialize/controller/UMFacebookHandler;)V

    iput-object v2, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    .line 311
    return-object v0
.end method

.method private buildMediaObject(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 4
    .param p1, "shareContent"    # Ljava/lang/String;
    .param p2, "media"    # Lcom/umeng/socialize/media/UMediaObject;

    .prologue
    .line 380
    if-nez p2, :cond_0

    .line 381
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v3, "### facebook \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd."

    invoke-static {v2, v3}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 384
    :cond_0
    instance-of v2, p2, Lcom/umeng/socialize/media/FaceBookShareContent;

    if-eqz v2, :cond_2

    move-object v0, p2

    .line 385
    check-cast v0, Lcom/umeng/socialize/media/FaceBookShareContent;

    .line 386
    .local v0, "fbContent":Lcom/umeng/socialize/media/FaceBookShareContent;
    invoke-virtual {v0}, Lcom/umeng/socialize/media/FaceBookShareContent;->getShareContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 387
    invoke-virtual {v0}, Lcom/umeng/socialize/media/FaceBookShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 389
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 392
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/socialize/media/FaceBookShareContent;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTitle:Ljava/lang/String;

    .line 393
    invoke-virtual {v0}, Lcom/umeng/socialize/media/FaceBookShareContent;->getCaption()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mCaption:Ljava/lang/String;

    .line 394
    invoke-virtual {v0}, Lcom/umeng/socialize/media/FaceBookShareContent;->getDescription()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mDescription:Ljava/lang/String;

    .line 395
    invoke-virtual {v0}, Lcom/umeng/socialize/media/FaceBookShareContent;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    .line 406
    .end local v0    # "fbContent":Lcom/umeng/socialize/media/FaceBookShareContent;
    :goto_1
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->checkTargetUrl()V

    goto :goto_0

    .line 396
    :cond_2
    instance-of v2, p2, Lcom/umeng/socialize/media/UMImage;

    if-eqz v2, :cond_3

    move-object v1, p2

    .line 397
    check-cast v1, Lcom/umeng/socialize/media/UMImage;

    .line 398
    .local v1, "shareMedia":Lcom/umeng/socialize/media/UMImage;
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 399
    iput-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 400
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTitle:Ljava/lang/String;

    .line 401
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    goto :goto_1

    .line 403
    .end local v1    # "shareMedia":Lcom/umeng/socialize/media/UMImage;
    :cond_3
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v3, "### facebook \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-static {v2, v3}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private checkTargetUrl()V
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->isUrlMedia()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    const-string v0, "http://www.umeng.com/social"

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mTargetUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private clearParams()V
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 797
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;

    .line 798
    return-void
.end method

.method private directShare()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 454
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    sget-object v1, Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;->PHOTO:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    if-ne v0, v1, :cond_0

    .line 456
    sget-object v0, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->POST_PHOTO:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    invoke-direct {p0, v0, v2}, Lcom/umeng/socialize/controller/UMFacebookHandler;->performPublish(Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;Z)V

    .line 461
    :goto_0
    return-void

    .line 459
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->POST_STATUS_UPDATE:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    invoke-direct {p0, v0, v2}, Lcom/umeng/socialize/controller/UMFacebookHandler;->performPublish(Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;Z)V

    goto :goto_0
.end method

.method private executePostStatus()V
    .locals 6

    .prologue
    .line 714
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    const-string v2, "picture"

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    new-instance v0, Lcom/facebook/Request;

    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v1

    const-string v2, "me/feed"

    .line 717
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostParams:Landroid/os/Bundle;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    new-instance v5, Lcom/umeng/socialize/controller/UMFacebookHandler$6;

    invoke-direct {v5, p0}, Lcom/umeng/socialize/controller/UMFacebookHandler$6;-><init>(Lcom/umeng/socialize/controller/UMFacebookHandler;)V

    .line 716
    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 725
    .local v0, "request":Lcom/facebook/Request;
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 727
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->clearParams()V

    .line 728
    return-void
.end method

.method private handleOnClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 4
    .param p1, "customPlatform"    # Lcom/umeng/socialize/bean/CustomPlatform;
    .param p2, "entity"    # Lcom/umeng/socialize/bean/SocializeEntity;
    .param p3, "listener"    # Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .prologue
    .line 334
    const-string v0, ""

    .line 335
    .local v0, "shareContent":Ljava/lang/String;
    const/4 v1, 0x0

    .line 337
    .local v1, "shareMedia":Lcom/umeng/socialize/media/UMediaObject;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->isShareAfterLogin:Z

    .line 338
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 340
    if-eqz p2, :cond_0

    .line 341
    iput-object p2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 343
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v2

    sget-object v3, Lcom/umeng/socialize/bean/ShareType;->SHAKE:Lcom/umeng/socialize/bean/ShareType;

    if-ne v2, v3, :cond_4

    .line 344
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v2

    iget-object v0, v2, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 345
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    .line 351
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPlatformClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    if-eqz v2, :cond_1

    .line 352
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPlatformClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;->onClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 355
    :cond_1
    iput-object p3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 357
    if-nez v1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 359
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v2, :cond_3

    .line 360
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 362
    :cond_3
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v3, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 364
    invoke-direct {p0, v0, v1}, Lcom/umeng/socialize/controller/UMFacebookHandler;->buildMediaObject(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 366
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->shareToFacebook()V

    .line 370
    :goto_1
    return-void

    .line 347
    :cond_4
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v0

    .line 348
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v1

    goto :goto_0

    .line 368
    :cond_5
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    const-string v3, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffdFacebook\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd..."

    invoke-static {v2, v3}, Lcom/umeng/socialize/controller/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handlePendingAction()V
    .locals 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    .line 558
    .local v0, "previouslyPendingAction":Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;
    sget-object v2, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->NONE:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    iput-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    .line 560
    invoke-static {}, Lcom/umeng/socialize/controller/UMFacebookHandler;->$SWITCH_TABLE$com$umeng$socialize$controller$UMFacebookHandler$PendingAction()[I

    move-result-object v2

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 570
    :goto_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 571
    iget-boolean v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->isChineseOS:Z

    if-eqz v2, :cond_1

    const-string v1, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd..."

    .line 572
    .local v1, "toast":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/umeng/socialize/controller/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 574
    .end local v1    # "toast":Ljava/lang/String;
    :cond_0
    return-void

    .line 562
    :pswitch_0
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->postStatus()V

    goto :goto_0

    .line 565
    :pswitch_1
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->postPhoto()V

    goto :goto_0

    .line 571
    :cond_1
    const-string v1, "sharing..."

    goto :goto_1

    .line 560
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleResponse(Lcom/facebook/Response;)V
    .locals 6
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 737
    const-string v2, ""

    .line 738
    .local v2, "message":Ljava/lang/String;
    const/4 v0, 0x0

    .line 739
    .local v0, "eCode":I
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 740
    .local v1, "error":Lcom/facebook/FacebookRequestError;
    if-nez v1, :cond_3

    .line 741
    iget-boolean v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->isChineseOS:Z

    if-eqz v3, :cond_2

    const-string v2, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    .line 742
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/umeng/socialize/controller/UMFacebookHandler;->sendReport(Z)V

    .line 750
    :goto_1
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v3, :cond_0

    .line 751
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v3, v4, v0, v5}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 753
    :cond_0
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 754
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2}, Lcom/umeng/socialize/controller/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 756
    :cond_1
    return-void

    .line 741
    :cond_2
    const-string v2, "done."

    goto :goto_0

    .line 744
    :cond_3
    iget-boolean v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->isChineseOS:Z

    if-eqz v3, :cond_4

    const-string v2, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    .line 745
    :goto_2
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "#### "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v0

    .line 747
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/umeng/socialize/controller/UMFacebookHandler;->sendReport(Z)V

    goto :goto_1

    .line 744
    :cond_4
    const-string v2, "failed."

    goto :goto_2
.end method

.method private initLocalInfo()V
    .locals 3

    .prologue
    .line 277
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/umeng/socom/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 279
    .local v0, "info":[Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 280
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->isChineseOS:Z

    .line 283
    .end local v0    # "info":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isResOrLocalImage()Z
    .locals 2

    .prologue
    .line 611
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    .line 613
    .local v0, "imgUrlOrPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 614
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 615
    invoke-static {v0}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 616
    :cond_0
    const/4 v1, 0x1

    .line 618
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSessionOpened()Z
    .locals 2

    .prologue
    .line 470
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 471
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onStatusChange(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 10
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 955
    if-eqz p1, :cond_0

    .line 956
    if-eqz p3, :cond_4

    .line 957
    instance-of v5, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-nez v5, :cond_0

    instance-of v5, p3, Lcom/facebook/FacebookAuthorizationException;

    if-eqz v5, :cond_4

    .line 958
    :cond_0
    iget-boolean v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->isChineseOS:Z

    if-eqz v5, :cond_3

    const-string v2, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    .line 959
    .local v2, "msg":Ljava/lang/String;
    :goto_0
    if-eqz p3, :cond_1

    .line 960
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 962
    :cond_1
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "### facebook"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " state =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1003
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 958
    :cond_3
    const-string v2, "oauth failed..."

    goto :goto_0

    .line 966
    :cond_4
    invoke-virtual {p1}, Lcom/facebook/Session;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 967
    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 968
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    .line 970
    .local v1, "expires_in":Ljava/util/Date;
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v5, v3, v1}, Lcom/umeng/socialize/controller/utils/TokenUtil;->saveTokenToLocal(Landroid/content/Context;Ljava/lang/String;Ljava/util/Date;)V

    .line 971
    invoke-virtual {p1}, Lcom/facebook/Session;->getAuthorizationBundle()Landroid/os/Bundle;

    move-result-object v4

    .line 972
    .local v4, "tokenBundle":Landroid/os/Bundle;
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v5, :cond_5

    .line 973
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v5, v4, v6}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 975
    :cond_5
    iget-boolean v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->isShareAfterLogin:Z

    if-eqz v5, :cond_2

    .line 976
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    sget-object v6, Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;->PHOTO:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    if-ne v5, v6, :cond_6

    .line 977
    sget-object v5, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->POST_PHOTO:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    iput-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    .line 980
    :cond_6
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->hasPublishPermission()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 982
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->directShare()V

    goto :goto_1

    .line 984
    :cond_7
    new-instance v5, Lcom/facebook/Session$NewPermissionsRequest;

    .line 985
    iget-object v6, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "publish_actions, user_photos, read_stream"

    aput-object v9, v7, v8

    invoke-direct {v5, v6, v7}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 984
    invoke-virtual {p1, v5}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_1

    .line 990
    .end local v1    # "expires_in":Ljava/util/Date;
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "tokenBundle":Landroid/os/Bundle;
    :cond_8
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    .line 991
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "### facebook\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd : SessionState = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 990
    invoke-static {v5, v6}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v5}, Lcom/umeng/socialize/bean/SocializeConfig;->isShowToast()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 994
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Facebook\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd, state = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 994
    invoke-static {v5, v6}, Lcom/umeng/socialize/controller/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 997
    :cond_9
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v5, :cond_2

    .line 998
    new-instance v0, Lcom/umeng/socialize/exception/SocializeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Facebook\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 999
    invoke-virtual {p1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 998
    invoke-direct {v0, v5}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v0, "exp":Lcom/umeng/socialize/exception/SocializeException;
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v5, v0, v6}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto/16 :goto_1
.end method

.method private performPublish(Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;Z)V
    .locals 6
    .param p1, "action"    # Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;
    .param p2, "allowNoSession"    # Z

    .prologue
    .line 529
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 530
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_2

    .line 531
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    .line 532
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->hasPublishPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 534
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->handlePendingAction()V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    .line 540
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "publish_actions, user_photos, read_stream"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0

    .line 545
    :cond_2
    if-eqz p2, :cond_0

    .line 546
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    .line 547
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->handlePendingAction()V

    goto :goto_0
.end method

.method private postPhoto()V
    .locals 3

    .prologue
    .line 690
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-nez v1, :cond_0

    .line 691
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v2, "### postPhoto, image data is null..."

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :goto_0
    return-void

    .line 696
    :cond_0
    new-instance v0, Lcom/umeng/socialize/controller/net/PostPhotoTask;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 697
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 696
    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/controller/net/PostPhotoTask;-><init>(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 698
    .local v0, "postPhotoTask":Lcom/umeng/socialize/controller/net/PostPhotoTask;
    new-instance v1, Lcom/umeng/socialize/controller/UMFacebookHandler$5;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/controller/UMFacebookHandler$5;-><init>(Lcom/umeng/socialize/controller/UMFacebookHandler;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/net/PostPhotoTask;->setPostListener(Lcom/umeng/socialize/controller/net/PostPhotoTask$OnPostPhotoListener;)V

    .line 705
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/net/PostPhotoTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private postStatus()V
    .locals 2

    .prologue
    .line 582
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->hasPublishPermission()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 584
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->addParams()V

    .line 586
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    instance-of v0, v0, Lcom/umeng/socialize/media/UMImage;

    if-eqz v0, :cond_1

    .line 588
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->isResOrLocalImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->uploadImage()V

    .line 602
    :goto_0
    return-void

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-interface {v0}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUploadedImgUrl:Ljava/lang/String;

    .line 593
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->executePostStatus()V

    goto :goto_0

    .line 596
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd, \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd..."

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :cond_2
    sget-object v0, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->POST_STATUS_UPDATE:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    goto :goto_0
.end method

.method private shareToFacebook()V
    .locals 6

    .prologue
    .line 430
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/umeng/socialize/controller/utils/TokenUtil;->isTokenValid(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 431
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->isSessionOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 432
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "### facebook\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd, post type = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->hasPublishPermission()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 435
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->directShare()V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 438
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 439
    new-instance v1, Lcom/facebook/Session$NewPermissionsRequest;

    .line 440
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "publish_actions, user_photos, read_stream"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 439
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    goto :goto_0

    .line 446
    .end local v0    # "session":Lcom/facebook/Session;
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-virtual {p0, v1, v2}, Lcom/umeng/socialize/controller/UMFacebookHandler;->authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method

.method private uploadImage()V
    .locals 3

    .prologue
    .line 664
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->hasPublishPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 665
    new-instance v0, Lcom/umeng/socialize/controller/net/UploadImageTask;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 666
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    check-cast v1, Lcom/umeng/socialize/media/UMImage;

    .line 665
    invoke-direct {v0, v2, v1}, Lcom/umeng/socialize/controller/net/UploadImageTask;-><init>(Landroid/content/Context;Lcom/umeng/socialize/media/UMImage;)V

    .line 667
    .local v0, "uploadTask":Lcom/umeng/socialize/controller/net/UploadImageTask;
    new-instance v1, Lcom/umeng/socialize/controller/UMFacebookHandler$4;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/controller/UMFacebookHandler$4;-><init>(Lcom/umeng/socialize/controller/UMFacebookHandler;)V

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/net/UploadImageTask;->setUploadListener(Lcom/umeng/socialize/controller/net/ImageUrlTask$OnUploadListener;)V

    .line 677
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/net/UploadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 681
    .end local v0    # "uploadTask":Lcom/umeng/socialize/controller/net/UploadImageTask;
    :goto_0
    return-void

    .line 679
    :cond_0
    sget-object v1, Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;->POST_PHOTO:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    iput-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPendingAction:Lcom/umeng/socialize/controller/UMFacebookHandler$PendingAction;

    goto :goto_0
.end method


# virtual methods
.method public addToSocialSDK()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->build()Lcom/umeng/socialize/bean/CustomPlatform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->addCustomPlatform(Lcom/umeng/socialize/bean/CustomPlatform;)V

    .line 319
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    invoke-virtual {v0, p0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSsoHandler(Lcom/umeng/socialize/controller/UMSsoHandler;)V

    .line 320
    return-void
.end method

.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 3
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .prologue
    .line 485
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v2, "\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd, activity = null"

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    :cond_1
    :goto_0
    return-void

    .line 489
    :cond_2
    iput-object p2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 490
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 492
    .local v0, "session":Lcom/facebook/Session;
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/facebook/Session;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 493
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, p1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 494
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v1

    .line 493
    invoke-virtual {v0, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 500
    :goto_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->FACEBOOK:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 496
    :cond_3
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->TAG:Ljava/lang/String;

    const-string v2, "### \ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffd\ufffdSession"

    invoke-static {v1, v2}, Lcom/umeng/socom/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mStatusCallback:Lcom/facebook/Session$StatusCallback;

    invoke-static {p1, v1, v2}, Lcom/facebook/Session;->openActiveSession(Landroid/app/Activity;ZLcom/facebook/Session$StatusCallback;)Lcom/facebook/Session;

    goto :goto_1
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 518
    invoke-virtual {p0, p1, p2, p3}, Lcom/umeng/socialize/controller/UMFacebookHandler;->onActivityResult(IILandroid/content/Intent;)V

    .line 519
    return-void
.end method

.method public getPostType()Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    return-object v0
.end method

.method public getRequstCode()I
    .locals 1

    .prologue
    .line 945
    const v0, 0xface

    return v0
.end method

.method protected hasPublishPermission()Z
    .locals 4

    .prologue
    .line 807
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 808
    .local v2, "session":Lcom/facebook/Session;
    const/4 v1, 0x0

    .line 809
    .local v1, "result":Z
    if-eqz v2, :cond_0

    .line 810
    invoke-virtual {v2}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    .line 811
    .local v0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "publish_actions"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    const-string v3, "user_photos"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 813
    const-string v3, "read_stream"

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    const/4 v1, 0x1

    .line 815
    .end local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return v1

    .line 811
    .restart local v0    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public logOut()V
    .locals 1

    .prologue
    .line 824
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 825
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 828
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 881
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mDialogCallback:Lcom/facebook/widget/FacebookDialog$Callback;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/umeng/socialize/controller/UMFacebookHandler;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 882
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "facebookDialogCallback"    # Lcom/facebook/widget/FacebookDialog$Callback;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    .line 901
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 857
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 933
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 919
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 863
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 864
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 865
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 866
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;)V

    .line 868
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 910
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 912
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mUiLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onStop()V

    .line 926
    return-void
.end method

.method protected sendReport(Z)V
    .locals 8
    .param p1, "result"    # Z

    .prologue
    .line 764
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSelectedPlatfrom()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 765
    .local v0, "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 766
    const-class v4, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v3, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->getListener(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 768
    .local v1, "registerListenrs":[Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
    const v2, 0x9c41

    .line 770
    .local v2, "statusCode":I
    if-eqz p1, :cond_0

    .line 772
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v4, v4, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareContent:Ljava/lang/String;

    .line 773
    iget-object v6, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v7

    .line 772
    invoke-static {v3, v4, v5, v6, v7}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 775
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mActivity:Landroid/app/Activity;

    .line 776
    const/16 v4, 0x16

    .line 775
    invoke-static {v3, v0, v4}, Lcom/umeng/socom/util/StatisticsDataUtils;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 777
    const/16 v2, 0xc8

    .line 781
    :cond_0
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v3, :cond_1

    .line 782
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iget-object v4, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v3, v0, v2, v4}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 786
    :cond_1
    iget-object v3, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v4, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 787
    iget-object v5, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 786
    invoke-virtual {v3, v4, v0, v2, v5}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 788
    return-void
.end method

.method public setPostType(Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;)V
    .locals 0
    .param p1, "postType"    # Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    .prologue
    .line 846
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMFacebookHandler;->mPostType:Lcom/umeng/socialize/controller/UMFacebookHandler$PostType;

    .line 847
    return-void
.end method
