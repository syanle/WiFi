.class public Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;
.super Landroid/app/Dialog;
.source "UMShareScrShotDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static mInternalListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

.field private static mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;


# instance fields
.field private final MAX_PLATFORMS:I

.field final MAX_WORD_NUM:I

.field private final PLATFORM_FILE:Ljava/lang/String;

.field private final PLATFORM_KEY:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mButtons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageButton;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelBtn:Landroid/widget/ImageButton;

.field private mContentEditText:Landroid/widget/EditText;

.field private mContext:Landroid/content/Context;

.field protected mController:Lcom/umeng/socialize/controller/UMSocialService;

.field private mCurrentBtn:Landroid/widget/ImageButton;

.field private mHalfTextView:Landroid/widget/TextView;

.field private mImgViewAnim:Landroid/view/animation/Animation;

.field private mInputAnim:Landroid/view/animation/Animation;

.field private mInputView:Landroid/view/View;

.field private mOkBtn:Landroid/widget/Button;

.field private mPlatformBtn1:Landroid/widget/ImageButton;

.field private mPlatformBtn2:Landroid/widget/ImageButton;

.field private mPlatformBtn3:Landroid/widget/ImageButton;

.field private mPlatformBtn4:Landroid/widget/ImageButton;

.field private mPlatformBtn5:Landroid/widget/ImageButton;

.field private mPrevBtn:Landroid/widget/ImageButton;

.field private mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private mResIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRootView:Landroid/view/View;

.field private mRotateImgView:Landroid/widget/ImageView;

.field private mSDKPlatforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SnsPlatform;",
            ">;"
        }
    .end annotation
.end field

.field private mScrshotBmp:Landroid/graphics/Bitmap;

.field private mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

.field private mShareImage:Lcom/umeng/socialize/media/UMImage;

.field private mSnsPlatforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation
.end field

.field private mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

.field private mWordOverflowAnim:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .line 858
    new-instance v0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$1;

    invoke-direct {v0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$1;-><init>()V

    sput-object v0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInternalListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .line 890
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 175
    const-string v1, "Notitle_Fullscreen"

    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;-><init>(Landroid/content/Context;I)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "style"    # I

    .prologue
    const/4 v1, 0x0

    .line 185
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 63
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRotateImgView:Landroid/widget/ImageView;

    .line 67
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCancelBtn:Landroid/widget/ImageButton;

    .line 68
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn1:Landroid/widget/ImageButton;

    .line 69
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn2:Landroid/widget/ImageButton;

    .line 70
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn3:Landroid/widget/ImageButton;

    .line 71
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn4:Landroid/widget/ImageButton;

    .line 72
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn5:Landroid/widget/ImageButton;

    .line 73
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mOkBtn:Landroid/widget/Button;

    .line 75
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContentEditText:Landroid/widget/EditText;

    .line 76
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 77
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInputView:Landroid/view/View;

    .line 78
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mScrshotBmp:Landroid/graphics/Bitmap;

    .line 79
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    .line 85
    const/4 v0, 0x5

    iput v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->MAX_PLATFORMS:I

    .line 90
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 95
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSDKPlatforms:Ljava/util/List;

    .line 103
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

    .line 107
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareImage:Lcom/umeng/socialize/media/UMImage;

    .line 111
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 115
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 119
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevBtn:Landroid/widget/ImageButton;

    .line 123
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    .line 141
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mImgViewAnim:Landroid/view/animation/Animation;

    .line 145
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInputAnim:Landroid/view/animation/Animation;

    .line 149
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mWordOverflowAnim:Landroid/view/animation/Animation;

    .line 153
    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mHalfTextView:Landroid/widget/TextView;

    .line 157
    const/16 v0, 0x8c

    iput v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->MAX_WORD_NUM:I

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->TAG:Ljava/lang/String;

    .line 165
    const-string v0, "platform_file"

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->PLATFORM_FILE:Ljava/lang/String;

    .line 166
    const-string v0, "prev_selected"

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->PLATFORM_KEY:Ljava/lang/String;

    .line 186
    iput-object p1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    .line 187
    invoke-direct {p0, p1}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->initViews(Landroid/content/Context;)V

    .line 188
    return-void
.end method

.method static synthetic access$0()Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    return-object v0
.end method

.method static synthetic access$1(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)Z
    .locals 1

    .prologue
    .line 738
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->isWordsOverflow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContentEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$3(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mWordOverflowAnim:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$4(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addButtonsToList()V
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn1:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn2:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn3:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn4:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn5:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    return-void
.end method

.method private changeImgBtnBgSrc()V
    .locals 3

    .prologue
    .line 699
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v1, :cond_0

    .line 703
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v1, :cond_1

    .line 708
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 711
    :cond_1
    return-void
.end method

.method private checkPlatforms()V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->removeDuplicate(Ljava/util/List;)V

    .line 447
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->initDefaultPlatforms()V

    .line 454
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSDKPlatforms:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSDKPlatforms:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->removeNotConfigedPlatform(Ljava/util/List;)V

    .line 452
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->initUserPlatforms()V

    goto :goto_0
.end method

.method private initDefaultPlatforms()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    .line 463
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn1:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 470
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn2:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 471
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn3:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn4:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 473
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn5:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 476
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->restorePlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 477
    .local v0, "prevPlatform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    if-eqz v0, :cond_0

    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v1, :cond_0

    .line 478
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 479
    invoke-direct {p0, v0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->selectedPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 491
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn1:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 482
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn2:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 483
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn3:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 484
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn4:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->RENREN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 485
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn5:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->DOUBAN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 487
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn1:Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    .line 488
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 489
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    goto/16 :goto_0
.end method

.method private initEditText()V
    .locals 2

    .prologue
    .line 389
    const-string v0, ""

    .line 391
    .local v0, "shareContent":Ljava/lang/String;
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

    invoke-interface {v1}, Lcom/umeng/socialize/sensor/controller/UMShakeService;->getShareContent()Ljava/lang/String;

    move-result-object v0

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContentEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 395
    return-void
.end method

.method private initIconMap()V
    .locals 9

    .prologue
    .line 321
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    .line 322
    .local v1, "config":Lcom/umeng/socialize/bean/SocializeConfig;
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v1, v5, v6}, Lcom/umeng/socialize/bean/SocializeConfig;->getAllPlatforms(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)Ljava/util/List;

    move-result-object v0

    .line 324
    .local v0, "allPlatforms":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/bean/SnsPlatform;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 351
    return-void

    .line 324
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 325
    .local v4, "snsPlatform":Lcom/umeng/socialize/bean/SnsPlatform;
    iget-object v6, v4, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-static {v6}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 327
    .local v2, "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v3, "resIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SMS:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v2, v6, :cond_1

    .line 330
    iget-object v6, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 331
    const-string v8, "umeng_socialize_sms"

    .line 330
    invoke-static {v6, v7, v8}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v6, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 334
    const-string v8, "umeng_socialize_sms_off"

    .line 333
    invoke-static {v6, v7, v8}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    :goto_1
    iget-object v6, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "### SDK \u5df2\u914d\u7f6e  "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u5e73\u53f0."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v6, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 336
    :cond_1
    sget-object v6, Lcom/umeng/socialize/bean/SHARE_MEDIA;->EMAIL:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v2, v6, :cond_2

    .line 337
    iget-object v6, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 338
    const-string v8, "umeng_socialize_gmail"

    .line 337
    invoke-static {v6, v7, v8}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v6, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 341
    const-string v8, "umeng_socialize_gmail_off"

    .line 340
    invoke-static {v6, v7, v8}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 344
    :cond_2
    iget v6, v4, Lcom/umeng/socialize/bean/SnsPlatform;->mIcon:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    iget v6, v4, Lcom/umeng/socialize/bean/SnsPlatform;->mGrayIcon:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initUserPlatforms()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 525
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->restorePlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v4

    .line 526
    .local v4, "prevPlatform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 527
    .local v3, "platformSize":I
    const/4 v5, 0x5

    if-lt v3, v5, :cond_0

    .line 528
    const/4 v3, 0x5

    .line 529
    const-string v5, "UMScrShotLanDialog"

    const-string v6, "### \u6447\u4e00\u6447\u5206\u4eab,\u6700\u591a\u53ef\u6dfb\u52a05\u4e2a\u5e73\u53f0."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_2

    .line 565
    if-eqz v4, :cond_1

    sget-object v5, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v4, v5, :cond_1

    .line 566
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 567
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 569
    .local v0, "button":Landroid/widget/ImageButton;
    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 571
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 572
    .local v2, "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 573
    iput-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 574
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 575
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    .line 578
    .end local v0    # "button":Landroid/widget/ImageButton;
    .end local v2    # "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    :cond_1
    return-void

    .line 534
    :cond_2
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 536
    .restart local v0    # "button":Landroid/widget/ImageButton;
    invoke-virtual {v0, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 538
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 540
    .restart local v2    # "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    if-eqz v4, :cond_3

    sget-object v5, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v4, v5, :cond_5

    .line 542
    :cond_3
    if-nez v1, :cond_4

    .line 543
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 544
    iput-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 545
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 546
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    .line 533
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 548
    :cond_4
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 549
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 548
    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 552
    :cond_5
    if-ne v2, v4, :cond_6

    .line 553
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 554
    iput-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 555
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 556
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    .line 557
    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "#### \u6062\u590d\u9009\u62e9\u7684\u5e73\u53f0\u4e3a: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 559
    :cond_6
    iget-object v5, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 196
    .line 197
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->LAYOUT:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "shake_umeng_socialize_share_dlg"

    .line 196
    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    .line 197
    const/4 v1, 0x0

    .line 196
    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->setContentView(Landroid/view/View;)V

    .line 200
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 201
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "contentLayout"

    .line 200
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInputView:Landroid/view/View;

    .line 204
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 205
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "scrshot_previewImg"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 204
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRotateImgView:Landroid/widget/ImageView;

    .line 206
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRotateImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 210
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "cancelBtn"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCancelBtn:Landroid/widget/ImageButton;

    .line 211
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCancelBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 215
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "sendBtn"

    .line 214
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mOkBtn:Landroid/widget/Button;

    .line 216
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mOkBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    .line 219
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ANIM:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 220
    const-string v3, "shake_umeng_socialize_edit_anim"

    .line 219
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 218
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mWordOverflowAnim:Landroid/view/animation/Animation;

    .line 222
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 223
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "contentEdit"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContentEditText:Landroid/widget/EditText;

    .line 224
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContentEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$2;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog$2;-><init>(Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 254
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 255
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "platform_btn1"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 254
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn1:Landroid/widget/ImageButton;

    .line 256
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn1:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 260
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "platform_btn2"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 259
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn2:Landroid/widget/ImageButton;

    .line 261
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn2:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 265
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "platform_btn3"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn3:Landroid/widget/ImageButton;

    .line 266
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn3:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 270
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "platform_btn4"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 269
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn4:Landroid/widget/ImageButton;

    .line 271
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn4:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 275
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "platform_btn5"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 274
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn5:Landroid/widget/ImageButton;

    .line 276
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn5:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    invoke-virtual {p0, v4}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->setCanceledOnTouchOutside(Z)V

    .line 284
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    .line 285
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ANIM:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 286
    const-string v3, "shake_umeng_socialize_imageview_rotate"

    .line 285
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 284
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mImgViewAnim:Landroid/view/animation/Animation;

    .line 287
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mImgViewAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 288
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mImgViewAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 290
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    .line 291
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ANIM:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 292
    const-string v3, "shake_umeng_socialize_dlg_scale"

    .line 291
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 290
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInputAnim:Landroid/view/animation/Animation;

    .line 295
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->addButtonsToList()V

    .line 297
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRootView:Landroid/view/View;

    .line 298
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->ID:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "half_textview"

    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mHalfTextView:Landroid/widget/TextView;

    .line 299
    return-void
.end method

.method private isNetworkAvalable(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 852
    invoke-static {p1}, Lcom/umeng/socom/DeviceConfig;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isPlatformConfiged(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z
    .locals 4
    .param p1, "platform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .prologue
    .line 682
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "keyword":Ljava/lang/String;
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSDKPlatforms:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 689
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 684
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsPlatform;

    .line 685
    .local v0, "item":Lcom/umeng/socialize/bean/SnsPlatform;
    iget-object v3, v0, Lcom/umeng/socialize/bean/SnsPlatform;->mKeyword:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 686
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isWordsOverflow()Z
    .locals 3

    .prologue
    .line 741
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContentEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 743
    .local v0, "shareContent":Ljava/lang/String;
    invoke-static {v0}, Lcom/umeng/socialize/common/SocializeUtils;->countContentLength(Ljava/lang/String;)I

    move-result v1

    .line 744
    .local v1, "words":I
    const/16 v2, 0x8c

    if-gt v2, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removeDuplicate(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "platforms":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 425
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .local v2, "newPlatforms":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    .line 435
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 436
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 427
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 429
    .local v0, "element":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    if-eqz v0, :cond_2

    .line 430
    sget-object v4, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v0, v4, :cond_2

    .line 431
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 432
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private removeNotConfigedPlatform(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p1, "platforms":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 663
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 671
    return-void

    .line 664
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 665
    .local v0, "item":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    invoke-direct {p0, v0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->isPlatformConfiged(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 666
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "## "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u5e73\u53f0\u6ca1\u6709\u5728SDK\u4e2d\u914d\u7f6e,\u81ea\u52a8\u79fb\u9664!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private restorePlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 5

    .prologue
    .line 586
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 587
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->GENERIC:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 594
    :goto_0
    return-object v2

    .line 589
    :cond_0
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    const-string v3, "platform_file"

    .line 590
    const/4 v4, 0x0

    .line 589
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 591
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v2, "prev_selected"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    .local v0, "platform":Ljava/lang/String;
    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "#### --- restorePlatform \u4e0a\u6b21\u5e73\u53f0\u4e3a : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    goto :goto_0
.end method

.method private savePlatfrom()V
    .locals 5

    .prologue
    .line 603
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 604
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    const-string v3, "platform_file"

    .line 605
    const/4 v4, 0x0

    .line 604
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 606
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 607
    .local v1, "spEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "prev_selected"

    iget-object v3, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 608
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 610
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    .end local v1    # "spEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private selectedPlatform(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 5
    .param p1, "prevPlatform"    # Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .prologue
    .line 501
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 514
    iput-object p1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 515
    iget-object v3, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v3, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 516
    return-void

    .line 502
    :cond_0
    iget-object v3, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 503
    .local v2, "platform":Lcom/umeng/socialize/bean/SHARE_MEDIA;
    iget-object v3, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mButtons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 506
    .local v0, "button":Landroid/widget/ImageButton;
    invoke-virtual {v2, p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 507
    iget-object v3, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 508
    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    .line 501
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :cond_1
    iget-object v3, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mResIconMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method private setTextViewVisibility()V
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 720
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->TAG:Ljava/lang/String;

    const-string v1, "mContext \u4e3a\u7a7a, \u4e0d\u80fd\u8bbe\u7f6e\u7a97\u53e3\u53c2\u6570."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 725
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mHalfTextView:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 727
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mHalfTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private startImageViewAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 404
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRotateImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mScrshotBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 405
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRotateImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 406
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mRotateImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mImgViewAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 409
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInputView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 410
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInputView:Landroid/view/View;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInputAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 411
    return-void
.end method


# virtual methods
.method public getPlatforms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    return-object v0
.end method

.method public getScrshotBmp()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mScrshotBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getSelectedPlatform()Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method public getShakeController()Lcom/umeng/socialize/sensor/controller/UMShakeService;
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

    return-object v0
.end method

.method public getShareListener()Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;
    .locals 1

    .prologue
    .line 938
    sget-object v0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    return-object v0
.end method

.method public getUMSocialService()Lcom/umeng/socialize/controller/UMSocialService;
    .locals 1

    .prologue
    .line 898
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 362
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 364
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->setTextViewVisibility()V

    .line 366
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->startImageViewAnim()V

    .line 367
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->initEditText()V

    .line 368
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 622
    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    monitor-enter v1

    .line 624
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevShareplatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 625
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCancelBtn:Landroid/widget/ImageButton;

    if-ne v0, p1, :cond_1

    .line 626
    sget-object v0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInternalListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    sget-object v2, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;->BUTTON_CANCEL:Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    invoke-interface {v0, v2}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onButtonClick(Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V

    .line 627
    invoke-virtual {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->dismiss()V

    .line 653
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->changeImgBtnBgSrc()V

    .line 622
    monitor-exit v1

    .line 655
    return-void

    .line 628
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mOkBtn:Landroid/widget/Button;

    if-ne v0, p1, :cond_2

    .line 629
    invoke-virtual {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->shareTo()V

    goto :goto_0

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 630
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn1:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_3

    .line 631
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevBtn:Landroid/widget/ImageButton;

    .line 632
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 633
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn1:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 634
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn2:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_4

    .line 635
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevBtn:Landroid/widget/ImageButton;

    .line 636
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 637
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn2:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn3:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_5

    .line 640
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevBtn:Landroid/widget/ImageButton;

    .line 641
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 642
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn3:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 643
    :cond_5
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn4:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_6

    .line 644
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevBtn:Landroid/widget/ImageButton;

    .line 645
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 646
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn4:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    goto :goto_0

    .line 647
    :cond_6
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn5:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_0

    .line 648
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPrevBtn:Landroid/widget/ImageButton;

    .line 649
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    const/4 v2, 0x4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 650
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mPlatformBtn5:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mCurrentBtn:Landroid/widget/ImageButton;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->savePlatfrom()V

    .line 380
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 381
    return-void
.end method

.method public setPlatforms(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p1, "platforms":Ljava/util/List;, "Ljava/util/List<Lcom/umeng/socialize/bean/SHARE_MEDIA;>;"
    iput-object p1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSnsPlatforms:Ljava/util/List;

    .line 786
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->checkPlatforms()V

    .line 787
    return-void
.end method

.method public setScrshotBmp(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 762
    iput-object p1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mScrshotBmp:Landroid/graphics/Bitmap;

    .line 763
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareImage:Lcom/umeng/socialize/media/UMImage;

    .line 765
    new-instance v0, Lcom/umeng/socialize/media/UMImage;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mScrshotBmp:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/media/UMImage;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareImage:Lcom/umeng/socialize/media/UMImage;

    .line 767
    :cond_0
    return-void
.end method

.method public setShakeController(Lcom/umeng/socialize/sensor/controller/UMShakeService;)V
    .locals 0
    .param p1, "shakeController"    # Lcom/umeng/socialize/sensor/controller/UMShakeService;

    .prologue
    .line 929
    iput-object p1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShakeController:Lcom/umeng/socialize/sensor/controller/UMShakeService;

    .line 930
    return-void
.end method

.method public setShareListener(Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .prologue
    .line 947
    sput-object p1, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .line 948
    return-void
.end method

.method public setUMSocialService(Lcom/umeng/socialize/controller/UMSocialService;)V
    .locals 3
    .param p1, "service"    # Lcom/umeng/socialize/controller/UMSocialService;

    .prologue
    .line 907
    iput-object p1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 909
    iget-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    iget-object v1, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->getAllPlatforms(Landroid/content/Context;Lcom/umeng/socialize/controller/UMSocialService;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSDKPlatforms:Ljava/util/List;

    .line 911
    invoke-direct {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->initIconMap()V

    .line 912
    return-void
.end method

.method protected shareTo()V
    .locals 6

    .prologue
    .line 804
    new-instance v1, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v1}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 805
    .local v1, "shareMsg":Lcom/umeng/socialize/bean/UMShareMsg;
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-void

    .line 808
    :cond_1
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->isNetworkAvalable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 809
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    const-string v3, "\u62b1\u6b49,\u8bf7\u68c0\u67e5\u60a8\u7684\u7f51\u7edc"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 813
    :cond_2
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eqz v2, :cond_0

    .line 815
    invoke-virtual {p0}, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->dismiss()V

    .line 816
    sget-object v2, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInternalListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    sget-object v3, Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;->BUTTON_SHARE:Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;

    invoke-interface {v2, v3}, Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;->onButtonClick(Lcom/umeng/socialize/sensor/UMSensor$WhitchButton;)V

    .line 819
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareImage:Lcom/umeng/socialize/media/UMImage;

    if-eqz v2, :cond_3

    .line 820
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareImage:Lcom/umeng/socialize/media/UMImage;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5206\u4eab\u5230"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/umeng/socialize/media/UMImage;->setTitle(Ljava/lang/String;)V

    .line 823
    :cond_3
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContentEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "shareConent":Ljava/lang/String;
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eq v2, v3, :cond_4

    .line 825
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN_CIRCLE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v2, v3, :cond_6

    .line 826
    :cond_4
    const-string v2, ""

    iput-object v2, v1, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 828
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareImage:Lcom/umeng/socialize/media/UMImage;

    if-eqz v2, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 829
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareImage:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v2, v0}, Lcom/umeng/socialize/media/UMImage;->setTitle(Ljava/lang/String;)V

    .line 835
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mShareImage:Lcom/umeng/socialize/media/UMImage;

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/UMShareMsg;->setMediaData(Lcom/umeng/socialize/media/UMediaObject;)V

    .line 837
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    sget-object v3, Lcom/umeng/socialize/bean/ShareType;->SHAKE:Lcom/umeng/socialize/bean/ShareType;

    invoke-interface {v2, v3}, Lcom/umeng/socialize/controller/UMSocialService;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V

    .line 839
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v2}, Lcom/umeng/socialize/controller/UMSocialService;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareMsg(Lcom/umeng/socialize/bean/UMShareMsg;)V

    .line 840
    iget-object v2, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v3, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mSelectedPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 841
    sget-object v5, Lcom/umeng/socialize/sensor/dialogs/UMShareScrShotDialog;->mInternalListener:Lcom/umeng/socialize/sensor/UMSensor$OnSensorListener;

    .line 840
    invoke-interface {v2, v3, v4, v5}, Lcom/umeng/socialize/controller/UMSocialService;->directShare(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    goto/16 :goto_0

    .line 832
    :cond_6
    iput-object v0, v1, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    goto :goto_1
.end method
