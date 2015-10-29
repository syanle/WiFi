.class public Lcom/umeng/socialize/sso/TencentWBSsoHandler;
.super Lcom/umeng/socialize/controller/UMSsoHandler;
.source "TencentWBSsoHandler.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field private mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/umeng/socialize/controller/UMSsoHandler;-><init>()V

    .line 25
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 23
    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/sso/TencentWBSsoHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    return-object v0
.end method

.method private auth(JLjava/lang/String;Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;

    invoke-direct {v0, p0, p5, p4}, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;-><init>(Lcom/umeng/socialize/sso/TencentWBSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Landroid/app/Activity;)V

    invoke-static {p4, p1, p2, p3, v0}, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->register(Landroid/content/Context;JLjava/lang/String;Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;)V

    .line 114
    const-string v0, ""

    invoke-static {p4, v0}, Lcom/tencent/weibo/sdk/android/component/sso/AuthHelper;->auth(Landroid/content/Context;Ljava/lang/String;)Z

    .line 115
    return-void
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 6

    .prologue
    .line 30
    iput-object p2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 32
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->g:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->getToken()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->auth(JLjava/lang/String;Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 34
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->TENCENT:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 35
    return-void
.end method

.method public authorizeCallBack(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 40
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/umeng/socialize/controller/impl/c;->c:Landroid/app/ProgressDialog;

    const-string v1, "\u8df3\u8f6c\u7f16\u8f91\u9875\u4e2d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 43
    :cond_0
    const/16 v0, 0x1625

    if-ne p1, v0, :cond_4

    .line 44
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_4

    .line 46
    iget-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 66
    :cond_1
    :goto_0
    return-void

    .line 49
    :cond_2
    if-nez p1, :cond_4

    .line 50
    if-eqz p3, :cond_3

    .line 52
    iget-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    iget-object v2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 53
    iget-object v3, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mActivity:Landroid/app/Activity;

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 54
    const-string v5, "umeng_socialize_text_tencent_oauth_login_fail"

    .line 53
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 52
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-object v1, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 63
    :cond_4
    iget-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mAuthListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iget-object v1, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-interface {v0, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method public getRequstCode()I
    .locals 1

    .prologue
    .line 119
    const/16 v0, 0x1625

    return v0
.end method
