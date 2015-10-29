.class Lcom/umeng/socialize/controller/impl/u;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/net/q;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

.field private final synthetic c:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/u;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/u;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/u;->c:Lcom/umeng/socialize/controller/impl/b;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/u;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/u;->e:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object p6, p0, Lcom/umeng/socialize/controller/impl/u;->f:Ljava/lang/String;

    .line 1873
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/net/q;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1886
    :try_start_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/u;->c:Lcom/umeng/socialize/controller/impl/b;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/u;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/u;->e:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/u;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)Lcom/umeng/socialize/net/q;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/umeng/socialize/exception/SocializeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1892
    :goto_0
    return-object v0

    .line 1887
    :catch_0
    move-exception v1

    .line 1888
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1890
    :catch_1
    move-exception v1

    .line 1891
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/umeng/socialize/exception/SocializeException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected a(Lcom/umeng/socialize/net/q;)V
    .locals 3

    .prologue
    .line 1898
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1899
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/u;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    if-eqz v0, :cond_0

    .line 1900
    if-eqz p1, :cond_1

    .line 1901
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/u;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    iget v1, p1, Lcom/umeng/socialize/net/q;->n:I

    iget-object v2, p1, Lcom/umeng/socialize/net/q;->a:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;->onComplete(ILjava/util/List;)V

    .line 1906
    :cond_0
    :goto_0
    return-void

    .line 1903
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/u;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;->onComplete(ILjava/util/List;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/u;->a()Lcom/umeng/socialize/net/q;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/umeng/socialize/net/q;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/u;->a(Lcom/umeng/socialize/net/q;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 1877
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 1878
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/u;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    if-eqz v0, :cond_0

    .line 1879
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/u;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchFriendsListener;->onStart()V

    .line 1881
    :cond_0
    return-void
.end method
