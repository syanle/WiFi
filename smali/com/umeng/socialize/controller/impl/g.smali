.class Lcom/umeng/socialize/controller/impl/g;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

.field private final synthetic c:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic d:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/g;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/g;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/g;->c:Lcom/umeng/socialize/controller/impl/b;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/g;->d:Landroid/content/Context;

    .line 534
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/g;->c:Lcom/umeng/socialize/controller/impl/b;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/g;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/impl/b;->f(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 551
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 553
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/g;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/socialize/db/c;->a(Landroid/content/Context;)V

    .line 557
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/g;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/g;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/g;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 560
    :cond_0
    return-void

    .line 555
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/g;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/g;->d:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/g;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/g;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 538
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 539
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/g;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/g;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onStart()V

    .line 542
    :cond_0
    return-void
.end method
