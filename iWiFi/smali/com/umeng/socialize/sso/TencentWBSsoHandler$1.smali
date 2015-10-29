.class Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;
.super Ljava/lang/Object;
.source "TencentWBSsoHandler.java"

# interfaces
.implements Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/sso/TencentWBSsoHandler;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sso/TencentWBSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/TencentWBSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iput-object p3, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$activity:Landroid/app/Activity;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFail(ILjava/lang/String;)V
    .locals 6

    .prologue
    .line 93
    iget-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    iget-object v2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$activity:Landroid/app/Activity;

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 94
    const-string v5, "umeng_socialize_text_tencent_no_connection"

    .line 93
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/TencentWBSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;
    invoke-static {v2}, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->access$0(Lcom/umeng/socialize/sso/TencentWBSsoHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 93
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 95
    return-void
.end method

.method public onAuthPassed(Ljava/lang/String;Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;)V
    .locals 4

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 108
    const-string v1, "uid"

    iget-object v2, p2, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->openID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "access_token"

    iget-object v2, p2, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "openid"

    iget-object v2, p2, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->openID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v1, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/TencentWBSsoHandler;

    const/16 v2, 0x1625

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->authorizeCallBack(IILandroid/content/Intent;)V

    .line 112
    return-void
.end method

.method public onWeiBoNotInstalled()V
    .locals 6

    .prologue
    .line 81
    iget-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    iget-object v2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$activity:Landroid/app/Activity;

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 82
    const-string v5, "umeng_socialize_text_tencent_no_connection"

    .line 81
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/TencentWBSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;
    invoke-static {v2}, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->access$0(Lcom/umeng/socialize/sso/TencentWBSsoHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 81
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 83
    return-void
.end method

.method public onWeiboVersionMisMatch()V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    new-instance v1, Lcom/umeng/socialize/exception/SocializeException;

    iget-object v2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->val$activity:Landroid/app/Activity;

    sget-object v4, Lcom/umeng/socialize/common/ResContainer$ResType;->STRING:Lcom/umeng/socialize/common/ResContainer$ResType;

    .line 88
    const-string v5, "umeng_socialize_text_tencent_no_connection"

    .line 87
    invoke-static {v3, v4, v5}, Lcom/umeng/socialize/common/ResContainer;->getResourceId(Landroid/content/Context;Lcom/umeng/socialize/common/ResContainer$ResType;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/umeng/socialize/exception/SocializeException;-><init>(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/umeng/socialize/sso/TencentWBSsoHandler$1;->this$0:Lcom/umeng/socialize/sso/TencentWBSsoHandler;

    # getter for: Lcom/umeng/socialize/sso/TencentWBSsoHandler;->mPlatform:Lcom/umeng/socialize/bean/SHARE_MEDIA;
    invoke-static {v2}, Lcom/umeng/socialize/sso/TencentWBSsoHandler;->access$0(Lcom/umeng/socialize/sso/TencentWBSsoHandler;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 87
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 89
    return-void
.end method
