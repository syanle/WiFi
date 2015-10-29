.class Lcom/umeng/socialize/controller/impl/ah;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "SocialServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/umeng/socialize/controller/impl/UMAsyncTask",
        "<",
        "Lcom/umeng/socialize/net/ab;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/socialize/controller/impl/c;

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

.field private final synthetic c:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Lcom/umeng/socialize/bean/SNSPair;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/ah;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/ah;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/ah;->c:Lcom/umeng/socialize/controller/impl/b;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/ah;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/ah;->e:Lcom/umeng/socialize/bean/SNSPair;

    .line 2958
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/umeng/socialize/net/ab;
    .locals 3

    .prologue
    .line 2970
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ah;->c:Lcom/umeng/socialize/controller/impl/b;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/ah;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/ah;->e:Lcom/umeng/socialize/bean/SNSPair;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/SNSPair;)Lcom/umeng/socialize/net/ab;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/umeng/socialize/net/ab;)V
    .locals 3

    .prologue
    .line 2975
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2976
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ah;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    if-eqz v0, :cond_0

    .line 2977
    if-eqz p1, :cond_1

    .line 2978
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ah;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    iget v1, p1, Lcom/umeng/socialize/net/ab;->n:I

    iget-object v2, p1, Lcom/umeng/socialize/net/ab;->a:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 2984
    :cond_0
    :goto_0
    return-void

    .line 2980
    :cond_1
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ah;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    .line 2981
    const/16 v1, -0x67

    const/4 v2, 0x0

    .line 2980
    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/ah;->a()Lcom/umeng/socialize/net/ab;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/umeng/socialize/net/ab;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/ah;->a(Lcom/umeng/socialize/net/ab;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 2962
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 2963
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ah;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    if-eqz v0, :cond_0

    .line 2964
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/ah;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onStart()V

    .line 2966
    :cond_0
    return-void
.end method
