.class Lcom/umeng/socialize/controller/impl/t;
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

.field private final synthetic c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic g:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;Ljava/lang/String;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/t;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/t;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/t;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/t;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/t;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/umeng/socialize/controller/impl/t;->f:Lcom/umeng/socialize/controller/impl/b;

    iput-object p7, p0, Lcom/umeng/socialize/controller/impl/t;->g:Landroid/content/Context;

    .line 1822
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 5

    .prologue
    .line 1834
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/umeng/socialize/bean/SNSPair;

    const/4 v1, 0x0

    new-instance v2, Lcom/umeng/socialize/bean/SNSPair;

    .line 1835
    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/t;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {v3}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/umeng/socialize/controller/impl/t;->d:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/umeng/socialize/bean/SNSPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1836
    new-instance v1, Lcom/umeng/socialize/bean/UMShareMsg;

    invoke-direct {v1}, Lcom/umeng/socialize/bean/UMShareMsg;-><init>()V

    .line 1837
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/t;->e:Ljava/lang/String;

    iput-object v2, v1, Lcom/umeng/socialize/bean/UMShareMsg;->mWeiBoId:Ljava/lang/String;

    .line 1838
    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/t;->f:Lcom/umeng/socialize/controller/impl/b;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/t;->g:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;[Lcom/umeng/socialize/bean/SNSPair;Lcom/umeng/socialize/bean/UMShareMsg;)Lcom/umeng/socialize/bean/MultiStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/socialize/bean/MultiStatus;->getStCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 1843
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1844
    const/16 v0, 0xc8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1845
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/t;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/t;->g:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    .line 1847
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/t;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_1

    .line 1848
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/t;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/t;->c:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/t;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v3, v3, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onComplete(Lcom/umeng/socialize/bean/SHARE_MEDIA;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 1850
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/t;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/t;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 1826
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 1827
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/t;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    if-eqz v0, :cond_0

    .line 1828
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/t;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SnsPostListener;->onStart()V

    .line 1830
    :cond_0
    return-void
.end method
