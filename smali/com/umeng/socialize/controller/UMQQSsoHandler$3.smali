.class Lcom/umeng/socialize/controller/UMQQSsoHandler$3;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$OnCustomPlatformClickListener;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/umeng/socialize/controller/UMQQSsoHandler$3;)Lcom/umeng/socialize/controller/UMQQSsoHandler;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    return-object v0
.end method


# virtual methods
.method public onClick(Lcom/umeng/socialize/bean/CustomPlatform;Lcom/umeng/socialize/bean/SocializeEntity;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 171
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    invoke-static {v1, p3}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$5(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;)V

    .line 175
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QQ:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-static {v1}, Lcom/umeng/socialize/bean/SocializeConfig;->setSelectedPlatfrom(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 176
    if-eqz p2, :cond_4

    .line 177
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    invoke-static {v0, p2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$6(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 178
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareMsg()Lcom/umeng/socialize/bean/UMShareMsg;

    move-result-object v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mEntity:Lcom/umeng/socialize/bean/SocializeEntity;
    invoke-static {v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$7(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareType()Lcom/umeng/socialize/bean/ShareType;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/bean/ShareType;->SHAKE:Lcom/umeng/socialize/bean/ShareType;

    if-ne v1, v2, :cond_0

    .line 181
    iget-object v1, v0, Lcom/umeng/socialize/bean/UMShareMsg;->mText:Ljava/lang/String;

    .line 182
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMShareMsg;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    .line 189
    :goto_0
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->setShareContent(Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V
    invoke-static {v2, v1, v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$8(Lcom/umeng/socialize/controller/UMQQSsoHandler;Ljava/lang/String;Lcom/umeng/socialize/media/UMediaObject;)V

    .line 190
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeShowDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$9()V

    .line 192
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/umeng/socialize/db/OauthHelper;->getAccessTokenForQQ(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/umeng/socialize/controller/UMQQSsoHandler$3$1;

    invoke-direct {v1, p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$3$1;-><init>(Lcom/umeng/socialize/controller/UMQQSsoHandler$3;)V

    .line 208
    invoke-static {v3}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$12(Z)V

    .line 209
    if-eqz v0, :cond_2

    .line 210
    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/umeng/socialize/db/OauthHelper;->getQQAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$4(Ljava/lang/String;)V

    .line 211
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$13()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->safeShowDialog()V
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$9()V

    .line 213
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$13()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$14(Lcom/tencent/tauth/Tencent;)V

    .line 214
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$15()Lcom/tencent/tauth/Tencent;

    move-result-object v1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Lcom/tencent/tauth/Tencent;->setOpenId(Ljava/lang/String;)V

    .line 215
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTencent:Lcom/tencent/tauth/Tencent;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$15()Lcom/tencent/tauth/Tencent;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/tencent/tauth/Tencent;->setAccessToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->gotoShare()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$2(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    .line 228
    :goto_1
    return-void

    .line 184
    :cond_0
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SocializeEntity;->getShareContent()Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {p2}, Lcom/umeng/socialize/bean/SocializeEntity;->getMedia()Lcom/umeng/socialize/media/UMediaObject;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->getQQAppIdFromServer(Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;)V
    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$16(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;)V

    goto :goto_1

    .line 221
    :cond_2
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$13()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->getQQAppIdFromServer(Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;)V
    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$16(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;)V

    goto :goto_1

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->initTencent()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$10(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    .line 226
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->gotoShare()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$2(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto/16 :goto_0
.end method
