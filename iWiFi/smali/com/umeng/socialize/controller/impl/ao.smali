.class Lcom/umeng/socialize/controller/impl/ao;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/net/g;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

.field private final synthetic c:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/ao;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/ao;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/ao;->c:Lcom/umeng/socialize/controller/impl/b;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/ao;->d:Landroid/content/Context;

    .line 418
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/net/g;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->c:Lcom/umeng/socialize/controller/impl/b;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ao;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/impl/b;->g(Landroid/content/Context;)Lcom/umeng/socialize/net/g;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/umeng/socialize/net/g;)V
    .locals 3

    .prologue
    .line 434
    if-eqz p1, :cond_1

    .line 435
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p1, Lcom/umeng/socialize/net/g;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Ljava/util/Map;)V

    .line 436
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p1, Lcom/umeng/socialize/net/g;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/socialize/controller/impl/c;->b(Lcom/umeng/socialize/controller/impl/c;Ljava/util/Map;)V

    .line 437
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->d:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/socialize/net/g;->a:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/umeng/socialize/common/SocializeUtils;->savePlatformKey(Landroid/content/Context;Ljava/util/Map;)V

    .line 438
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ao;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-static {v1}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/common/SocializeUtils;->savePlatformSecret(Landroid/content/Context;Ljava/util/Map;)V

    .line 439
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    iget v1, p1, Lcom/umeng/socialize/net/g;->n:I

    iget-object v2, p1, Lcom/umeng/socialize/net/g;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/ao;->a()Lcom/umeng/socialize/net/g;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/umeng/socialize/net/g;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/ao;->a(Lcom/umeng/socialize/net/g;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 421
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 422
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ao;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onStart()V

    .line 425
    :cond_0
    return-void
.end method
