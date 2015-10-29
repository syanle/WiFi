.class Lcom/umeng/socialize/controller/impl/f;
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

.field private final synthetic c:Landroid/content/Context;

.field private final synthetic d:Lcom/umeng/socialize/bean/SnsAccount;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/f;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/f;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/f;->c:Landroid/content/Context;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/f;->d:Lcom/umeng/socialize/bean/SnsAccount;

    .line 494
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/f;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/f;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/f;->d:Lcom/umeng/socialize/bean/SnsAccount;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/impl/c;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SnsAccount;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 510
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 511
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 512
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/f;->c:Landroid/content/Context;

    const-string v1, "custom"

    invoke-static {v0, v1}, Lcom/umeng/socialize/db/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 517
    :goto_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/f;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/f;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/f;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onComplete(ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 520
    :cond_0
    return-void

    .line 514
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/f;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/f;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/f;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/f;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 497
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 498
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/f;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/f;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onStart()V

    .line 501
    :cond_0
    return-void
.end method
