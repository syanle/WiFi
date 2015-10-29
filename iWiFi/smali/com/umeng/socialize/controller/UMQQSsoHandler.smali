.class public Lcom/umeng/socialize/controller/UMQQSsoHandler;
.super Lcom/umeng/socialize/controller/UMSsoHandler;
.source "UMQQSsoHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;,
        Lcom/umeng/socialize/controller/UMQQSsoHandler$TimeOutHandler;
    }
.end annotation


# static fields
.field private static APP_ID:Ljava/lang/String; = null

.field private static GOTO_SHARE_ACTIVITY:Z = false

.field private static final TAG:Ljava/lang/String; = "UMQQSsoHandler"

.field private static final TIME_OUT_CODE:I = 0x7b

.field private static flag:Z

.field private static isShareClick:Z

.field public static mActivity:Landroid/app/Activity;

.field private static mImageUrl:Ljava/lang/String;

.field private static mProgressDialog:Landroid/app/ProgressDialog;

.field private static mQQPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

.field public static mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

.field private static mShareType:I

.field private static mTencent:Lcom/tencent/tauth/Tencent;

.field private static mTitle:Ljava/lang/String;


# instance fields
.field private authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field private isTimeOut:Z

.field private mDefaultIcon:I

.field private mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

.field private mHandler:Landroid/os/Handler;

.field private mMediaType:I

.field private mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

.field private mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field private mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

.field private mTimerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    const-string v0, "100424468"

    sput-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;

    .line 77
    sput-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    .line 78
    sput-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 79
    new-instance v0, Lcom/umeng/socialize/bean/QQShareMsg;

    const-string v1, "\u5206\u4eab\u5230QQ"

    .line 80
    const-string v2, "http://www.umeng.com/social"

    .line 79
    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/QQShareMsg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    .line 88
    sput-boolean v4, Lcom/umeng/socialize/controller/UMQQSsoHandler;->GOTO_SHARE_ACTIVITY:Z

    .line 90
    sput-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 91
    sput-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQQPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 105
    sput-boolean v4, Lcom/umeng/socialize/controller/UMQQSsoHandler;->flag:Z

    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isShareClick:Z

    .line 107
    sput v4, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mShareType:I

    .line 108
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 117
    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMSsoHandler;-><init>()V

    .line 84
    iput-object v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 85
    iput v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mDefaultIcon:I

    .line 92
    invoke-static {}, Lcom/umeng/socialize/bean/SocializeConfig;->getSocializeConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    .line 97
    new-instance v0, Lcom/umeng/socialize/controller/UMQQSsoHandler$TimeOutHandler;

    invoke-direct {v0, v2}, Lcom/umeng/socialize/controller/UMQQSsoHandler$TimeOutHandler;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler$TimeOutHandler;)V

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mHandler:Landroid/os/Handler;

    .line 99
    iput-boolean v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isTimeOut:Z

    .line 100
    iput v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mMediaType:I

    .line 311
    new-instance v0, Lcom/umeng/socialize/controller/UMQQSsoHandler$1;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$1;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTimerRunnable:Ljava/lang/Runnable;

    .line 1268
    new-instance v0, Lcom/umeng/socialize/controller/UMQQSsoHandler$2;

    invoke-direct {v0, p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$2;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    iput-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 127
    sput-object p2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;

    .line 128
    sput-object p1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    .line 129
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    sget-object v1, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 130
    const-string v2, "umeng_socialize_qq_on"

    .line 129
    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mDefaultIcon:I

    .line 132
    new-instance v0, Landroid/app/ProgressDialog;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    .line 133
    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    sget-object v3, Lcom/umeng/socialize/common/ResContainer$ResType;->STYLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 134
    const-string v4, "Theme.UMDialog"

    .line 133
    invoke-static {v2, v3, v4}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v2

    .line 132
    invoke-direct {v0, v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 136
    sget-object v0, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v1, "umeng_socialize_text_waitting_qq"

    .line 135
    invoke-static {p1, v0, v1}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 139
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->initTencent()V

    .line 142
    :cond_0
    invoke-static {p1}, Lcom/umeng/socom/DeviceConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socom/util/b;->a(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/controller/UMQQSsoHandler;Z)V
    .locals 0

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isTimeOut:Z

    return-void
.end method

.method static synthetic access$1(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->initTencent()V

    return-void
.end method

.method static synthetic access$11(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    .locals 1

    .prologue
    .line 1268
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    return-object v0
.end method

.method static synthetic access$12(Z)V
    .locals 0

    .prologue
    .line 106
    sput-boolean p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isShareClick:Z

    return-void
.end method

.method static synthetic access$13()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$14(Lcom/tencent/tauth/Tencent;)V
    .locals 0

    .prologue
    .line 78
    sput-object p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    return-void
.end method

.method static synthetic access$15()Lcom/tencent/tauth/Tencent;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method static synthetic access$16(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->getQQAppIdFromServer(Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;)V

    return-void
.end method

.method static synthetic access$17(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isTimeOut:Z

    return v0
.end method

.method static synthetic access$18(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTimerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$19(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->loginDeal(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    return-void
.end method

.method static synthetic access$2(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V
    .locals 0

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->gotoShare()V

    return-void
.end method

.method static synthetic access$20()Z
    .locals 1

    .prologue
    .line 106
    sget-boolean v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isShareClick:Z

    return v0
.end method

.method static synthetic access$21(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lorg/json/JSONObject;)Lcom/umeng/socialize/bean/UMToken;
    .locals 1

    .prologue
    .line 501
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->buildUmToken(Lorg/json/JSONObject;)Lcom/umeng/socialize/bean/UMToken;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$22(Lcom/umeng/socialize/controller/UMQQSsoHandler;Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)V
    .locals 0

    .prologue
    .line 520
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)V

    return-void
.end method

.method static synthetic access$23(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    return-object v0
.end method

.method static synthetic access$24(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeConfig;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    return-object v0
.end method

.method static synthetic access$25(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V
    .locals 0

    .prologue
    .line 821
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->sendReport()V

    return-void
.end method

.method static synthetic access$26(Lcom/umeng/socialize/controller/UMQQSsoHandler;Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 1234
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->fileToByte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$27(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    sput-object p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$29(Lcom/umeng/socialize/controller/UMQQSsoHandler;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1221
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->setImageUrl(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3()V
    .locals 0

    .prologue
    .line 1044
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V

    return-void
.end method

.method static synthetic access$4(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 75
    sput-object p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$5(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    return-void
.end method

.method static synthetic access$6(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    return-void
.end method

.method static synthetic access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    return-object v0
.end method

.method static synthetic access$8(Lcom/umeng/socialize/controller/UMQQSsoHandler;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0, p1, p2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->setShareContent(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    return-void
.end method

.method static synthetic access$9()V
    .locals 0

    .prologue
    .line 1034
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeShowDialog()V

    return-void
.end method

.method private static buildParams()Landroid/os/Bundle;
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 886
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 887
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/QQShareMsg;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 889
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/QQShareMsg;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 890
    const-string v1, "title"

    .line 891
    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/QQShareMsg;->a()Ljava/lang/String;

    move-result-object v2

    .line 890
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    :cond_0
    :goto_0
    sget v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mShareType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 899
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->setShareToTextAndImage(Landroid/os/Bundle;)V

    .line 906
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 907
    const-string v2, "mounted"

    .line 906
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 908
    const-string v2, "imageUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    .line 909
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    const-string v2, "\u65e0SD\u5361\uff0c\u4e0d\u80fd\u8fdb\u884c\u542b\u6709\u56fe\u7247\u7684\u5206\u4eab"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 910
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 912
    :cond_2
    const-string v1, "UMQQSsoHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "share image url :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "imageUrl"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    :goto_2
    const-string v1, "UMQQSsoHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#####  qq \u53c2\u6570 : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/QQShareMsg;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    return-object v0

    .line 892
    :cond_3
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTitle:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 893
    const-string v1, "title"

    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 894
    :cond_4
    sget v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mShareType:I

    if-eq v1, v4, :cond_0

    .line 895
    const-string v1, "title"

    const-string v2, "\u5206\u4eab\u5230QQ"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 900
    :cond_5
    sget v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mShareType:I

    if-ne v1, v4, :cond_6

    .line 901
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->setShareToImage(Landroid/os/Bundle;)V

    goto :goto_1

    .line 902
    :cond_6
    sget v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mShareType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 903
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->setShareToAudio(Landroid/os/Bundle;)V

    goto/16 :goto_1

    .line 914
    :cond_7
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    const-string v2, "\u4f20\u5165\u7684\u53c2\u6570\u6709\u8bef, \u8bf7\u6b63\u786e\u8bbe\u7f6e\u8981\u5206\u4eab\u7684\u5185\u5bb9..."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 915
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private buildUmToken(Lorg/json/JSONObject;)Lcom/umeng/socialize/bean/UMToken;
    .locals 4

    .prologue
    .line 502
    const-string v0, "access_token"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    const-string v1, "openid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 507
    new-instance v2, Lcom/umeng/socialize/bean/SNSPair;

    sget-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQQPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    iget-object v3, v3, Lcom/umeng/socialize/bean/CustomPlatform;->mKeyword:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v0, v1}, Lcom/umeng/socialize/bean/UMToken;->buildToken(Lcom/umeng/socialize/bean/SNSPair;Ljava/lang/String;Ljava/lang/String;)Lcom/umeng/socialize/bean/UMToken;

    move-result-object v0

    .line 509
    const-string v1, "UMQQSsoHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QQ TOKEN : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    return-object v0
.end method

.method private fileToByte(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1260
    :cond_0
    :goto_0
    return-object v0

    .line 1240
    :cond_1
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1241
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 1242
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v3

    .line 1241
    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 1243
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 1245
    :goto_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 1248
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 1252
    if-eqz v2, :cond_0

    .line 1254
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1255
    :catch_0
    move-exception v1

    .line 1256
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1246
    :cond_2
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 1249
    :catch_1
    move-exception v1

    .line 1250
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1252
    if-eqz v2, :cond_0

    .line 1254
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 1255
    :catch_2
    move-exception v1

    .line 1256
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1251
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 1252
    :goto_3
    if-eqz v2, :cond_3

    .line 1254
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 1259
    :cond_3
    :goto_4
    throw v0

    .line 1255
    :catch_3
    move-exception v1

    .line 1256
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1251
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 1249
    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method private getQQAppIdFromServer(Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/umeng/socom/DeviceConfig;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iput-boolean v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isTimeOut:Z

    .line 248
    new-instance v0, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;)V

    .line 280
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 287
    :goto_0
    return-void

    .line 282
    :cond_0
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    const-string v1, "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5..."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 283
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 284
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V

    goto :goto_0
.end method

.method public static getTencent()Lcom/tencent/tauth/Tencent;
    .locals 1

    .prologue
    .line 1074
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method private gotoShare()V
    .locals 3

    .prologue
    .line 724
    sget-boolean v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->GOTO_SHARE_ACTIVITY:Z

    if-eqz v0, :cond_1

    .line 726
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/umeng/socialize/view/ShareActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 727
    const-string v1, "QQ-SSO"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 728
    const-string v1, "media_type"

    iget v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mMediaType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 729
    const-string v1, "share_content"

    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 730
    const-string v1, "sns"

    .line 731
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v2

    .line 730
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 732
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    const-string v1, "dc"

    .line 735
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v2, v2, Lcom/umeng/socialize/bean/SocializeEntity;->mEntityKey:Ljava/lang/String;

    .line 733
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    :cond_0
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 742
    :goto_0
    return-void

    .line 740
    :cond_1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->shareToQQ()V

    goto :goto_0
.end method

.method private initTencent()V
    .locals 2

    .prologue
    .line 149
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    sput-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    .line 152
    :cond_0
    return-void
.end method

.method private static isImageFileExist(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1024
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1025
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1028
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTencentInited()Z
    .locals 1

    .prologue
    .line 858
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-virtual {v0}, Lcom/tencent/tauth/Tencent;->getOpenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 858
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loginDeal(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 4

    .prologue
    .line 402
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isTencentInited()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 403
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    .line 407
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isShareClick:Z

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 409
    const/4 v3, 0x3

    .line 408
    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 411
    :cond_1
    const-string v0, "UMQQSsoHandler"

    const-string v1, "QQ oauth login..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    const-string v2, "all"

    new-instance v3, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;

    invoke-direct {v3, p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler$7;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 479
    return-void

    .line 404
    :cond_2
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->initTencent()V

    goto :goto_0
.end method

.method private ready()Z
    .locals 3

    .prologue
    .line 868
    const-string v0, "com.tencent.mobileqq"

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    const/4 v0, 0x1

    .line 877
    :cond_0
    :goto_0
    return v0

    .line 871
    :cond_1
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isTencentInited()Z

    move-result v0

    .line 872
    if-nez v0, :cond_0

    .line 873
    const-string v1, "UMQQSsoHandler"

    const-string v2, "mTencent is not ready."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static safeCloseDialog()V
    .locals 1

    .prologue
    .line 1045
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1046
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1049
    :cond_0
    return-void
.end method

.method private static safeShowDialog()V
    .locals 1

    .prologue
    .line 1035
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1036
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1039
    :cond_0
    return-void
.end method

.method private sendReport()V
    .locals 5

    .prologue
    .line 822
    sget-boolean v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->flag:Z

    if-eqz v0, :cond_0

    .line 823
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    iget-object v1, v1, Lcom/umeng/socialize/bean/SocializeEntity;->mDescriptor:Ljava/lang/String;

    .line 824
    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/QQShareMsg;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 825
    const-string v4, "qq"

    .line 823
    invoke-static {v0, v1, v2, v3, v4}, Lcom/umeng/socialize/common/SocializeUtils;->sendAnalytic(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V

    .line 827
    :try_start_0
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    .line 828
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v2, 0x10

    .line 827
    invoke-static {v0, v1, v2}, Lcom/umeng/socom/util/StatisticsDataUtils;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 831
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->flag:Z

    .line 833
    :cond_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setImageUrl(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 1222
    sput-object p1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mImageUrl:Ljava/lang/String;

    .line 1223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1224
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/QQShareMsg;->k()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    :cond_0
    return-void
.end method

.method private setShareContent(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 597
    const-string v1, ""

    .line 598
    const-string v0, ""

    .line 599
    if-eqz p2, :cond_10

    instance-of v2, p2, Lcom/umeng/socialize/media/QQShareContent;

    if-eqz v2, :cond_10

    move-object v0, p2

    .line 600
    check-cast v0, Lcom/umeng/socialize/media/QQShareContent;

    .line 601
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QQShareContent;->getShareContent()Ljava/lang/String;

    move-result-object p1

    .line 602
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QQShareContent;->getTargetUrl()Ljava/lang/String;

    move-result-object v2

    .line 603
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QQShareContent;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 605
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QQShareContent;->getMediaType()Lcom/umeng/socialize/media/UMediaObject$MediaType;

    move-result-object v3

    .line 606
    sget-object v4, Lcom/umeng/socialize/media/UMediaObject$MediaType;->IMAGE:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v3, v4, :cond_2

    .line 607
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QQShareContent;->getShareImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object p2

    move-object v0, v1

    move-object v1, p2

    .line 615
    :goto_0
    iput-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mShareMedia:Lcom/umeng/socialize/media/UMediaObject;

    .line 617
    if-eqz v1, :cond_7

    invoke-interface {v1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 618
    instance-of v3, v1, Lcom/umeng/socialize/media/UMImage;

    if-nez v3, :cond_7

    .line 619
    const-string v3, ""

    .line 620
    instance-of v4, v1, Lcom/umeng/socialize/media/UMusic;

    if-eqz v4, :cond_5

    move-object v0, v1

    .line 621
    check-cast v0, Lcom/umeng/socialize/media/UMusic;

    .line 622
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 623
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumb()Ljava/lang/String;

    move-result-object v3

    .line 624
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 625
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 626
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    .line 631
    :goto_1
    sget-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-interface {v1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/umeng/socialize/bean/QQShareMsg;->g(Ljava/lang/String;)V

    .line 632
    sget-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-interface {v1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/umeng/socialize/bean/QQShareMsg;->c(Ljava/lang/String;)V

    .line 633
    iput v6, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mMediaType:I

    move-object v1, v4

    .line 648
    :goto_2
    sput v6, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mShareType:I

    .line 649
    sget-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v3, v1}, Lcom/umeng/socialize/bean/QQShareMsg;->a(Ljava/lang/String;)V

    .line 650
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1, p1}, Lcom/umeng/socialize/bean/QQShareMsg;->e(Ljava/lang/String;)V

    .line 651
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/bean/QQShareMsg;->b(Ljava/lang/String;)V

    .line 678
    :cond_0
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0, v2}, Lcom/umeng/socialize/bean/QQShareMsg;->c(Ljava/lang/String;)V

    .line 681
    :cond_1
    return-void

    .line 608
    :cond_2
    sget-object v4, Lcom/umeng/socialize/media/UMediaObject$MediaType;->MUSIC:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v3, v4, :cond_3

    .line 609
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QQShareContent;->getShareMusic()Lcom/umeng/socialize/media/UMusic;

    move-result-object p2

    move-object v0, v1

    move-object v1, p2

    .line 610
    goto/16 :goto_0

    :cond_3
    sget-object v4, Lcom/umeng/socialize/media/UMediaObject$MediaType;->VEDIO:Lcom/umeng/socialize/media/UMediaObject$MediaType;

    if-ne v3, v4, :cond_f

    .line 611
    invoke-virtual {v0}, Lcom/umeng/socialize/media/QQShareContent;->getShareVideo()Lcom/umeng/socialize/media/UMVideo;

    move-result-object p2

    move-object v0, v1

    move-object v1, p2

    goto/16 :goto_0

    .line 627
    :cond_4
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 628
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMusic;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 634
    :cond_5
    instance-of v4, v1, Lcom/umeng/socialize/media/UMVideo;

    if-eqz v4, :cond_d

    move-object v0, v1

    .line 635
    check-cast v0, Lcom/umeng/socialize/media/UMVideo;

    .line 636
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 637
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumb()Ljava/lang/String;

    move-result-object v3

    .line 638
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 639
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 640
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v0

    .line 645
    :goto_4
    sget-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-interface {v1}, Lcom/umeng/socialize/media/UMediaObject;->toUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/umeng/socialize/bean/QQShareMsg;->c(Ljava/lang/String;)V

    .line 646
    const/4 v1, 0x3

    iput v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mMediaType:I

    move-object v1, v4

    goto/16 :goto_2

    .line 641
    :cond_6
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 642
    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMVideo;->getThumbImage()Lcom/umeng/socialize/media/UMImage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 652
    :cond_7
    if-eqz v1, :cond_a

    instance-of v3, v1, Lcom/umeng/socialize/media/UMImage;

    if-eqz v3, :cond_a

    .line 653
    check-cast v1, Lcom/umeng/socialize/media/UMImage;

    .line 654
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 655
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 657
    :cond_8
    sget-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v3, v0}, Lcom/umeng/socialize/bean/QQShareMsg;->a(Ljava/lang/String;)V

    .line 658
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/QQShareMsg;->e(Ljava/lang/String;)V

    .line 659
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->toUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/umeng/socialize/bean/QQShareMsg;->b(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->isSerialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 661
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->waitImageToSerialize()V

    .line 663
    :cond_9
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    .line 664
    invoke-virtual {v1}, Lcom/umeng/socialize/media/UMImage;->getImageCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/QQShareMsg;->f(Ljava/lang/String;)V

    .line 665
    const/4 v0, 0x1

    iput v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mMediaType:I

    .line 666
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    const/4 v0, 0x5

    sput v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mShareType:I

    goto/16 :goto_3

    .line 669
    :cond_a
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/QQShareMsg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 670
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/QQShareMsg;->e(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 672
    :cond_b
    const-string v0, "UMQQSsoHandler"

    .line 673
    const-string v1, "\u8bbe\u7f6e\u7684QQ\u5206\u4eab\u5185\u5bb9\u4e0d\u5408\u6cd5!\u5206\u4eab\u7684\u591a\u5a92\u4f53\u5fc5\u987b\u662furl\u5f62\u5f0f,\u4e0d\u80fd\u4f20\u9012\u672c\u5730\u6587\u4ef6.\u8bf7\u53c2\u8003CustomPlatformFragment\u4e2d\u7684addQQPlatform\u65b9\u6cd5"

    .line 672
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V

    goto/16 :goto_3

    :cond_c
    move-object v0, v3

    goto/16 :goto_4

    :cond_d
    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_2

    :cond_e
    move-object v0, v3

    goto/16 :goto_1

    :cond_f
    move-object v0, v1

    move-object v1, p2

    goto/16 :goto_0

    :cond_10
    move-object v2, v1

    move-object v1, p2

    goto/16 :goto_0
.end method

.method private static setShareToAudio(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 993
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/QQShareMsg;->c()Ljava/lang/String;

    move-result-object v0

    .line 994
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/QQShareMsg;->g()Ljava/lang/String;

    move-result-object v1

    .line 996
    const-string v2, "req_type"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 997
    const-string v2, "summary"

    sget-object v3, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/QQShareMsg;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    const-string v2, "targetUrl"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/QQShareMsg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1001
    const-string v1, "imageUrl"

    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v2}, Lcom/umeng/socialize/bean/QQShareMsg;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_0
    :goto_0
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/QQShareMsg;->h()Ljava/lang/String;

    move-result-object v1

    .line 1011
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1014
    :goto_1
    const-string v1, "audio_url"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    return-void

    .line 1002
    :cond_1
    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    if-eqz v2, :cond_0

    .line 1003
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1005
    invoke-static {v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isImageFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1007
    const-string v2, "imageLocalUrl"

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private static setShareToImage(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 933
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/QQShareMsg;->g()Ljava/lang/String;

    move-result-object v0

    .line 934
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/QQShareMsg;->b()Ljava/lang/String;

    move-result-object v1

    .line 936
    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 938
    const-string v0, "imageUrl"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    :cond_0
    :goto_0
    const-string v0, "req_type"

    .line 947
    const/4 v1, 0x5

    .line 946
    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 948
    return-void

    .line 939
    :cond_1
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 940
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isImageFileExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    const-string v1, "imageLocalUrl"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static setShareToTextAndImage(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 962
    const-string v0, "req_type"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 963
    const-string v0, "summary"

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/QQShareMsg;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v0, "targetUrl"

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/QQShareMsg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/QQShareMsg;->g()Ljava/lang/String;

    move-result-object v0

    .line 967
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/QQShareMsg;->b()Ljava/lang/String;

    move-result-object v1

    .line 970
    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    if-eqz v2, :cond_1

    .line 971
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 973
    const-string v0, "imageUrl"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    if-eqz v1, :cond_0

    .line 975
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 977
    const-string v1, "imageUrl"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private uploadToken(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)V
    .locals 2

    .prologue
    .line 521
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/umeng/socom/DeviceConfig;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    new-instance v0, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/bean/UMToken;Landroid/content/Context;)V

    .line 546
    new-instance v1, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)V

    .line 573
    invoke-virtual {v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 579
    :goto_0
    return-void

    .line 575
    :cond_0
    const-string v0, "\u60a8\u7684\u7f51\u7edc\u4e0d\u53ef\u7528,\u8bf7\u68c0\u67e5\u7f51\u7edc\u8fde\u63a5..."

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 576
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 577
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V

    goto :goto_0
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 2

    .prologue
    .line 331
    .line 332
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->isTencentInited()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    .line 339
    :cond_0
    new-instance v0, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;

    invoke-direct {v0, p0, p2}, Lcom/umeng/socialize/controller/UMQQSsoHandler$5;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 367
    invoke-virtual {p0, v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->login(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 368
    :goto_0
    return-void

    .line 334
    :cond_1
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    if-nez v0, :cond_0

    .line 335
    const-string v0, "UMQQSsoHandler"

    const-string v1, "Tencent\u6210\u5458\u53d8\u91cf\u672a\u521d\u59cb\u5316!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 489
    const-string v0, "UMQQSsoHandler"

    const-string v1, "had been QQ sso authorizeCallBack..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method public final build()Lcom/umeng/socialize/bean/CustomPlatform;
    .locals 4

    .prologue
    .line 160
    new-instance v0, Lcom/umeng/socialize/bean/CustomPlatform;

    const-string v1, "qq"

    .line 161
    const-string v2, "QQ\u597d\u53cb"

    iget v3, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mDefaultIcon:I

    .line 160
    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/socialize/bean/CustomPlatform;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQQPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    .line 162
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQQPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    .line 163
    sget-object v2, Lcom/umeng/socialize/common/ResContainer$ResType;->DRAWABLE:Lcom/umeng/socialize/common/ResContainer$ResType;

    const-string v3, "umeng_socialize_qq_off"

    .line 162
    invoke-static {v1, v2, v3}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mGrayIcon:I

    .line 166
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQQPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    new-instance v1, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    iput-object v1, v0, Lcom/umeng/socialize/bean/CustomPlatform;->mClickListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;

    .line 231
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQQPlatform:Lcom/umeng/socialize/bean/CustomPlatform;

    return-object v0
.end method

.method public canOpenShareActivity(Z)V
    .locals 0

    .prologue
    .line 689
    sput-boolean p1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->GOTO_SHARE_ACTIVITY:Z

    .line 690
    return-void
.end method

.method public getBitmapUrl(Landroid/content/Context;Lcom/umeng/socialize/media/UMediaObject;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 1144
    if-nez p2, :cond_0

    .line 1145
    const-string v0, "UMQQSsoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "media is null..."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_0
    new-instance v3, Lcom/umeng/socialize/controller/impl/b;

    .line 1149
    new-instance v0, Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v1, "com.umeng.share.uploadImage"

    .line 1150
    sget-object v2, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    .line 1149
    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SocializeEntity;-><init>(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)V

    .line 1148
    invoke-direct {v3, v0}, Lcom/umeng/socialize/controller/impl/b;-><init>(Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 1151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1152
    new-instance v0, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/media/UMediaObject;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Ljava/lang/String;J)V

    .line 1213
    invoke-virtual {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$11;->execute()Lcom/umeng/socialize/controller/impl/UMAsyncTask;

    .line 1214
    return-void
.end method

.method public getCanOpenShareActivity()Z
    .locals 1

    .prologue
    .line 716
    sget-boolean v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->GOTO_SHARE_ACTIVITY:Z

    return v0
.end method

.method public getQqShareMsg()Lcom/umeng/socialize/bean/QQShareMsg;
    .locals 1

    .prologue
    .line 1078
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    return-object v0
.end method

.method public getRequstCode()I
    .locals 1

    .prologue
    .line 1057
    const/16 v0, 0x161a

    return v0
.end method

.method public getTargetUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1113
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/QQShareMsg;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCanOpenShareActivity()Z
    .locals 1

    .prologue
    .line 702
    sget-boolean v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->GOTO_SHARE_ACTIVITY:Z

    return v0
.end method

.method public login(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 1

    .prologue
    .line 382
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    new-instance v0, Lcom/umeng/socialize/controller/UMQQSsoHandler$6;

    invoke-direct {v0, p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler$6;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 390
    invoke-direct {p0, v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->getQQAppIdFromServer(Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->loginDeal(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method

.method public setTargetUrl(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1093
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1094
    invoke-static {p1}, Lcom/umeng/socialize/net/utils/SocializeNetUtils;->startWithHttp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1095
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/QQShareMsg;->c(Ljava/lang/String;)V

    .line 1099
    :goto_0
    return-void

    .line 1097
    :cond_0
    const-string v0, "UMQQSsoHandler"

    const-string v1, "target url \u5fc5\u987b\u586b\u5199, \u4e14\u5fc5\u987b\u4ee5\"http://\"\u5f00\u5934."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1128
    sput-object p1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTitle:Ljava/lang/String;

    .line 1129
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/QQShareMsg;->a(Ljava/lang/String;)V

    .line 1130
    return-void
.end method

.method public shareToQQ()V
    .locals 5

    .prologue
    .line 749
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->ready()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 750
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSnsPostListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 755
    const/4 v0, 0x1

    sput-boolean v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->flag:Z

    .line 756
    const-string v0, "com.tencent.mobileqq"

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 757
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeCloseDialog()V

    .line 760
    :cond_1
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->buildParams()Landroid/os/Bundle;

    move-result-object v2

    new-instance v3, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;

    invoke-direct {v3, p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$10;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/tauth/Tencent;->shareToQQ(Landroid/app/Activity;Landroid/os/Bundle;Lcom/tencent/tauth/IUiListener;)V

    .line 804
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    sget-object v1, Lcom/umeng/socialize/bean/ShareType;->NORMAL:Lcom/umeng/socialize/bean/ShareType;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setShareType(Lcom/umeng/socialize/bean/ShareType;)V

    .line 806
    const-string v0, "com.tencent.mobileqq"

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mSocializeConfig:Lcom/umeng/socialize/bean/SocializeConfig;

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    .line 808
    sget-object v2, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const/16 v3, 0xc8

    iget-object v4, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 807
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 809
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->sendReport()V

    .line 815
    :cond_2
    :goto_0
    return-void

    .line 812
    :cond_3
    const-string v0, "UMQQSsoHandler"

    const-string v1, "QQ\u5e73\u53f0\u8fd8\u6ca1\u6709\u6388\u6743"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method

.method public shareToQQ(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 840
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mQqShareMsg:Lcom/umeng/socialize/bean/QQShareMsg;

    invoke-virtual {v0, p1}, Lcom/umeng/socialize/bean/QQShareMsg;->e(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->shareToQQ()V

    .line 842
    return-void
.end method
