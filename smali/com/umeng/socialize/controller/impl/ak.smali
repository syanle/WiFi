.class Lcom/umeng/socialize/controller/impl/ak;
.super Ljava/lang/Object;
.source "SocialServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

.field private final synthetic c:Lcom/umeng/socialize/bean/UMToken;

.field private final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/bean/UMToken;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/ak;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/ak;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/ak;->c:Lcom/umeng/socialize/bean/UMToken;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/ak;->d:Landroid/content/Context;

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V
    .locals 4

    .prologue
    .line 287
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ak;->c:Lcom/umeng/socialize/bean/UMToken;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ak;->c:Lcom/umeng/socialize/bean/UMToken;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/UMToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ak;->c:Lcom/umeng/socialize/bean/UMToken;

    iget-object v1, v1, Lcom/umeng/socialize/bean/UMToken;->mPaltform:Ljava/lang/String;

    invoke-static {v1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v1

    .line 291
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ak;->d:Landroid/content/Context;

    .line 292
    const/16 v3, 0xd

    .line 291
    invoke-virtual {p2, v2, v1, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->addStatisticsData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 293
    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 294
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ak;->d:Landroid/content/Context;

    .line 295
    const-string v3, "null"

    .line 294
    invoke-static {v2, v1, v0, v3}, Lcom/umeng/socialize/db/OauthHelper;->saveAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ak;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ak;->c:Lcom/umeng/socialize/bean/UMToken;

    iget-object v2, v2, Lcom/umeng/socialize/bean/UMToken;->mUsid:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/db/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ak;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ak;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-interface {v0, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 302
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ak;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ak;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onStart()V

    .line 283
    :cond_0
    return-void
.end method
