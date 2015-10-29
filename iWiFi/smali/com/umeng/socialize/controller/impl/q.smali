.class Lcom/umeng/socialize/controller/impl/q;
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

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic f:Landroid/content/Context;

.field private final synthetic g:Lcom/umeng/socialize/bean/UMShareMsg;

.field private final synthetic h:Lcom/umeng/socialize/bean/SHARE_MEDIA;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/UMShareMsg;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/q;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/q;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/q;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/q;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/q;->e:Lcom/umeng/socialize/controller/impl/b;

    iput-object p6, p0, Lcom/umeng/socialize/controller/impl/q;->f:Landroid/content/Context;

    iput-object p7, p0, Lcom/umeng/socialize/controller/impl/q;->g:Lcom/umeng/socialize/bean/UMShareMsg;

    iput-object p8, p0, Lcom/umeng/socialize/controller/impl/q;->h:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    .line 1594
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 1609
    new-instance v0, Lcom/umeng/socialize/bean/SNSPair;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/q;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/q;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/q;->e:Lcom/umeng/socialize/controller/impl/b;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/q;->f:Landroid/content/Context;

    .line 1611
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/umeng/socialize/bean/SNSPair;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/q;->g:Lcom/umeng/socialize/bean/UMShareMsg;

    .line 1610
    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    .line 1612
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/q;->h:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-eqz v1, :cond_1

    .line 1613
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/q;->h:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/MultiStatus;->getPlatformStatus(Lcom/umeng/socialize/bean/SHARE_MEDIA;)I

    move-result v1

    .line 1614
    const/16 v2, -0x66

    if-ne v2, v1, :cond_0

    .line 1615
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/MultiStatus;->getStCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1620
    :goto_0
    return-object v0

    .line 1617
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 1620
    :cond_1
    invoke-virtual {v0}, Lcom/umeng/socialize/bean/MultiStatus;->getStCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 5

    .prologue
    .line 1626
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1627
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/q;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->convertToEmun(Ljava/lang/String;)Lcom/umeng/socialize/bean/SHARE_MEDIA;

    move-result-object v0

    .line 1628
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    .line 1629
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/q;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/q;->f:Landroid/content/Context;

    invoke-static {v1, v2, v0, p1}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    .line 1632
    :cond_0
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/q;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v1, :cond_1

    .line 1633
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/q;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/q;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v3, v3, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v1, v0, v2, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 1636
    :cond_1
    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/q;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, v1, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v1}, Lcom/umeng/socialize/bean/SocializeEntity;->isFireCallback()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1638
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->b()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    .line 1639
    const-class v2, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/q;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v4, v4, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    .line 1638
    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnComplete(Ljava/lang/Class;Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 1642
    :cond_2
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/q;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/q;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/q;->e:Lcom/umeng/socialize/controller/impl/b;

    invoke-static {v0, v1, v2}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/controller/impl/b;)V

    .line 1644
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/q;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-virtual {v0}, Lcom/umeng/socialize/controller/impl/c;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeConfig;->cleanListeners()Z

    .line 1645
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/q;->a:Lcom/umeng/socialize/controller/impl/c;

    invoke-static {v0}, Lcom/umeng/socialize/controller/impl/c;->c(Lcom/umeng/socialize/controller/impl/c;)V

    .line 1647
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/q;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeEntity;->setFireCallback(Z)V

    .line 1648
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/q;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/q;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1597
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 1598
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/q;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/q;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/q;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v0, v0, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/SocializeEntity;->isFireCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1603
    invoke-static {}, Lcom/umeng/socialize/controller/impl/c;->b()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v0

    const-class v1, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/bean/SocializeConfig;->fireAllListenersOnStart(Ljava/lang/Class;)V

    .line 1605
    :cond_1
    return-void
.end method
