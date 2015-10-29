.class Lcom/umeng/socialize/controller/impl/an;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/net/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;

.field private final synthetic c:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:J


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/an;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/an;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/an;->c:Lcom/umeng/socialize/controller/impl/b;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/an;->d:Landroid/content/Context;

    iput-wide p5, p0, Lcom/umeng/socialize/controller/impl/an;->e:J

    .line 375
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/net/e;
    .locals 4

    .prologue
    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/an;->c:Lcom/umeng/socialize/controller/impl/b;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/an;->d:Landroid/content/Context;

    iget-wide v2, p0, Lcom/umeng/socialize/controller/impl/an;->e:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;J)Lcom/umeng/socialize/net/e;
    :try_end_0
    .catch Lcom/umeng/socialize/exception/SocializeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/umeng/socialize/exception/SocializeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/umeng/socialize/net/e;)V
    .locals 4

    .prologue
    .line 397
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/an;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;

    if-eqz v0, :cond_0

    .line 398
    if-eqz p1, :cond_1

    .line 399
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/an;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;

    iget v1, p1, Lcom/umeng/socialize/net/e;->n:I

    iget-object v2, p1, Lcom/umeng/socialize/net/e;->a:Ljava/util/List;

    .line 400
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/an;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v3, v3, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 399
    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;->onComplete(ILjava/util/List;Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/an;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;

    const/16 v1, -0x66

    .line 403
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/an;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v3, v3, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 402
    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;->onComplete(ILjava/util/List;Lcom/umeng/socialize/bean/SocializeEntity;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/an;->a()Lcom/umeng/socialize/net/e;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/umeng/socialize/net/e;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/an;->a(Lcom/umeng/socialize/net/e;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 380
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/an;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/an;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$FetchCommetsListener;->onStart()V

    .line 383
    :cond_0
    return-void
.end method
