.class Lcom/umeng/socialize/controller/impl/j;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/net/m;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;

.field private final synthetic c:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/j;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/j;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/j;->c:Lcom/umeng/socialize/controller/impl/b;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/j;->d:Landroid/content/Context;

    .line 667
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeUser;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 698
    iget-object v0, p2, Lcom/umeng/socialize/bean/SocializeUser;->mAccounts:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 700
    invoke-static {p1}, Lcom/umeng/socialize/db/OauthHelper;->getAuthenticatedPlatform(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    .line 701
    iget-object v0, p2, Lcom/umeng/socialize/bean/SocializeUser;->mAccounts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 725
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 726
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 727
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 734
    :cond_1
    iget-object v0, p2, Lcom/umeng/socialize/bean/SocializeUser;->mLoginAccount:Lcom/umeng/socialize/bean/SnsAccount;

    if-eqz v0, :cond_3

    .line 736
    iget-object v0, p2, Lcom/umeng/socialize/bean/SocializeUser;->mLoginAccount:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getPlatform()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v2

    .line 737
    const/4 v0, 0x0

    .line 739
    invoke-static {p1}, Lcom/umeng/socialize/db/c;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 741
    invoke-static {p1}, Lcom/umeng/socialize/db/c;->b(Landroid/content/Context;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v3

    .line 742
    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 749
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 750
    invoke-virtual {v2}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/socialize/db/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 753
    :cond_3
    return-void

    .line 701
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SnsAccount;

    .line 703
    :try_start_0
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getUsid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 705
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getPlatform()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v4

    .line 707
    if-eqz v4, :cond_5

    .line 708
    invoke-static {p1, v4}, Lcom/umeng/socialize/db/OauthHelper;->isAuthenticated(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)Z

    move-result v5

    .line 709
    if-nez v5, :cond_5

    .line 711
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SnsAccount;->getUsid()Ljava/lang/String;

    move-result-object v0

    .line 710
    invoke-static {p1, v4, v0}, Lcom/umeng/socialize/db/OauthHelper;->setUsid(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    .line 714
    :cond_5
    if-eqz v4, :cond_0

    .line 715
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Sync user center failed.."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 727
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 728
    invoke-static {p1, v0}, Lcom/umeng/socialize/db/OauthHelper;->remove(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_1

    :cond_7
    move v0, v1

    .line 746
    goto :goto_2
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/net/m;
    .locals 4

    .prologue
    .line 680
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/j;->c:Lcom/umeng/socialize/controller/impl/b;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/j;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/impl/b;->e(Landroid/content/Context;)Lcom/umeng/socialize/net/m;
    :try_end_0
    .catch Lcom/umeng/socialize/exception/SocializeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 683
    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, v0, Lcom/umeng/socialize/net/m;->a:Lcom/umeng/socialize/bean/SocializeUser;

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/j;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v1}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeConfig;->isSyncUserInfo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/j;->d:Landroid/content/Context;

    iget-object v2, v0, Lcom/umeng/socialize/net/m;->a:Lcom/umeng/socialize/bean/SocializeUser;

    invoke-direct {p0, v1, v2}, Lcom/umeng/socialize/controller/impl/j;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SocializeUser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/umeng/socialize/exception/SocializeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 693
    :cond_0
    :goto_0
    return-object v0

    .line 687
    :catch_0
    move-exception v1

    .line 688
    :try_start_2
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Sync user center failed.."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/umeng/socialize/exception/SocializeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 691
    :catch_1
    move-exception v0

    .line 692
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/socialize/exception/SocializeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/umeng/socialize/net/m;)V
    .locals 3

    .prologue
    .line 757
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 758
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/j;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;

    if-eqz v0, :cond_0

    .line 759
    if-eqz p1, :cond_1

    .line 760
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/j;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;

    iget v1, p1, Lcom/umeng/socialize/net/m;->n:I

    iget-object v2, p1, Lcom/umeng/socialize/net/m;->a:Lcom/umeng/socialize/bean/SocializeUser;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;->onComplete(ILcom/umeng/socialize/bean/SocializeUser;)V

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/j;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;->onComplete(ILcom/umeng/socialize/bean/SocializeUser;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/j;->a()Lcom/umeng/socialize/net/m;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/umeng/socialize/net/m;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/j;->a(Lcom/umeng/socialize/net/m;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 671
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 672
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/j;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/j;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchUserListener;->onStart()V

    .line 675
    :cond_0
    return-void
.end method
