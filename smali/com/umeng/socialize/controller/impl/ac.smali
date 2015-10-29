.class Lcom/umeng/socialize/controller/impl/ac;
.super Ljava/lang/Object;
.source "SocialServiceImpl.java"

# interfaces
.implements Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

.field private final synthetic d:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/ac;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/ac;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/ac;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/ac;->d:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    .line 2465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2512
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ac;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, v0}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 2514
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->b:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/socialize/db/OauthHelper;->remove(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2515
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_0

    .line 2516
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v1, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2518
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->d:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_1

    .line 2519
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->d:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_2

    .line 2523
    :cond_1
    return-void

    .line 2519
    :cond_2
    aget-object v3, v1, v0

    .line 2520
    invoke-interface {v3, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onCancel(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2519
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2483
    if-eqz p1, :cond_4

    .line 2484
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ac;->b:Landroid/content/Context;

    .line 2485
    const/4 v3, 0x1

    .line 2484
    invoke-virtual {v1, v2, p2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 2486
    const-string v1, "uid"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2487
    const-string v2, "access_key"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2488
    const-string v3, "access_secret"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2490
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2491
    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/ac;->b:Landroid/content/Context;

    invoke-static {v4, p2, v2, v3}, Lcom/umeng/socialize/db/OauthHelper;->saveAccessToken(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;)V

    .line 2493
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2494
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ac;->b:Landroid/content/Context;

    invoke-static {v2, p2, v1}, Lcom/umeng/socialize/db/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 2500
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_2

    .line 2501
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v1, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2503
    :cond_2
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->d:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_3

    .line 2504
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->d:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_5

    .line 2508
    :cond_3
    return-void

    .line 2497
    :cond_4
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ac;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v0}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    goto :goto_0

    .line 2504
    :cond_5
    aget-object v3, v1, v0

    .line 2505
    invoke-interface {v3, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onComplete(Landroid/os/Bundle;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2504
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2468
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/impl/c;->getEntity()Lcom/umeng/socialize/bean/SocializeEntity;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ac;->b:Landroid/content/Context;

    invoke-virtual {v1, v2, p2, v0}, Lcom/umeng/socialize/bean/SocializeEntity;->addOauthData(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;I)V

    .line 2470
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->b:Landroid/content/Context;

    invoke-static {v1, p2}, Lcom/umeng/socialize/db/OauthHelper;->remove(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2471
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_0

    .line 2472
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v1, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2474
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->d:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v1, :cond_1

    .line 2475
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->d:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    array-length v2, v1

    :goto_0
    if-lt v0, v2, :cond_2

    .line 2479
    :cond_1
    return-void

    .line 2475
    :cond_2
    aget-object v3, v1, v0

    .line 2476
    invoke-interface {v3, p1, p2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onError(Lcom/umeng/socialize/exception/SocializeException;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2475
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 4

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ac;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ac;->c:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    invoke-interface {v0, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2530
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ac;->d:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    if-eqz v0, :cond_1

    .line 2531
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ac;->d:[Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_2

    .line 2535
    :cond_1
    return-void

    .line 2531
    :cond_2
    aget-object v3, v1, v0

    .line 2532
    invoke-interface {v3, p1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;->onStart(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    .line 2531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
