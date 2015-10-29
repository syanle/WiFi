.class Lcom/umeng/socialize/controller/impl/s;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/bean/MultiStatus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

.field private final synthetic c:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:[Lcom/umeng/socialize/bean/SNSPair;

.field private final synthetic f:Lcom/umeng/socialize/bean/UMShareMsg;

.field private final synthetic g:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/s;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/s;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/s;->c:Lcom/umeng/socialize/controller/impl/b;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/s;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/s;->e:[Lcom/umeng/socialize/bean/SNSPair;

    iput-object p6, p0, Lcom/umeng/socialize/controller/impl/s;->f:Lcom/umeng/socialize/bean/UMShareMsg;

    iput-object p7, p0, Lcom/umeng/socialize/controller/impl/s;->g:Ljava/util/Map;

    .line 1756
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/bean/MultiStatus;
    .locals 4

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/s;->c:Lcom/umeng/socialize/controller/impl/b;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/s;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/s;->e:[Lcom/umeng/socialize/bean/SNSPair;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/s;->f:Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/umeng/socialize/bean/MultiStatus;)V
    .locals 6

    .prologue
    .line 1773
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1775
    invoke-virtual {p1}, Lcom/umeng/socialize/bean/MultiStatus;->getPlatformCode()Ljava/util/Map;

    move-result-object v2

    .line 1776
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/s;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1778
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1784
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/s;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    if-eqz v0, :cond_1

    .line 1785
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/s;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/MultiStatus;->getStCode()I

    move-result v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/s;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v0, p1, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onComplete(Lcom/umeng/socialize/bean/MultiStatus;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 1787
    :cond_1
    return-void

    .line 1778
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 1779
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1780
    const/16 v4, 0xc8

    if-eq v4, v1, :cond_0

    .line 1781
    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/s;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v5, p0, Lcom/umeng/socialize/controller/impl/s;->d:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4, v5, v0, v1}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/s;->a()Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/umeng/socialize/bean/MultiStatus;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/s;->a(Lcom/umeng/socialize/bean/MultiStatus;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 1760
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 1761
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/s;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    if-eqz v0, :cond_0

    .line 1762
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/s;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onStart()V

    .line 1764
    :cond_0
    return-void
.end method
