.class Lcom/umeng/socialize/controller/UMQQSsoHandler$8;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$token:Lcom/umeng/socialize/bean/UMToken;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/bean/UMToken;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;->val$token:Lcom/umeng/socialize/bean/UMToken;

    iput-object p3, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;->val$context:Landroid/content/Context;

    .line 522
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 4

    .prologue
    .line 530
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;->val$token:Lcom/umeng/socialize/bean/UMToken;

    if-eqz v0, :cond_1

    .line 531
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;->val$token:Lcom/umeng/socialize/bean/UMToken;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 533
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;->val$token:Lcom/umeng/socialize/bean/UMToken;

    iget-object v1, v1, Lcom/umeng/socialize/bean/UMToken;->mPaltform:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    .line 535
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;->val$context:Landroid/content/Context;

    .line 537
    const-string v3, "null"

    .line 536
    invoke-static {v2, v1, v0, v3}, Lcom/umeng/socialize/db/OauthHelper;->saveAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$8;->val$token:Lcom/umeng/socialize/bean/UMToken;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMToken;->mUsid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/db/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 541
    :cond_0
    const-string v0, "UMQQSsoHandler"

    const-string v1, "##### QQ TOKEN UPLOAD DONE."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 525
    const-string v0, "UMQQSsoHandler"

    const-string v1, "#### QQ TOKEN UPLOAD."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method
