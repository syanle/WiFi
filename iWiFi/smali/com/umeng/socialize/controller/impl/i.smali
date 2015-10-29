.class Lcom/umeng/socialize/controller/impl/i;
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

.field private final synthetic b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

.field private final synthetic c:Lcom/umeng/socialize/controller/impl/b;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Lcom/umeng/socialize/bean/UMComment;

.field private final synthetic f:[Lcom/umeng/socialize/bean/SNSPair;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/impl/c;Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;Lcom/umeng/socialize/controller/impl/b;Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;[Lcom/umeng/socialize/bean/SNSPair;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/impl/i;->a:Lcom/umeng/socialize/controller/impl/c;

    iput-object p2, p0, Lcom/umeng/socialize/controller/impl/i;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/impl/i;->c:Lcom/umeng/socialize/controller/impl/b;

    iput-object p4, p0, Lcom/umeng/socialize/controller/impl/i;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/umeng/socialize/controller/impl/i;->e:Lcom/umeng/socialize/bean/UMComment;

    iput-object p6, p0, Lcom/umeng/socialize/controller/impl/i;->f:[Lcom/umeng/socialize/bean/SNSPair;

    .line 616
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 628
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/i;->c:Lcom/umeng/socialize/controller/impl/b;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/i;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/i;->e:Lcom/umeng/socialize/bean/UMComment;

    iget-object v3, p0, Lcom/umeng/socialize/controller/impl/i;->f:[Lcom/umeng/socialize/bean/SNSPair;

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/UMComment;[Lcom/umeng/socialize/bean/SNSPair;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 633
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 634
    const/16 v0, 0xc8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 635
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/i;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v1, p0, Lcom/umeng/socialize/controller/impl/i;->d:Landroid/content/Context;

    invoke-static {v0, v1, v3, p1}, Lcom/umeng/socialize/controller/impl/c;->a(Lcom/umeng/socialize/controller/impl/c;Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/Integer;)V

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/i;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    if-eqz v0, :cond_1

    .line 638
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/i;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/umeng/socialize/controller/impl/i;->a:Lcom/umeng/socialize/controller/impl/c;

    iget-object v2, v2, Lcom/umeng/socialize/controller/impl/c;->a:Lcom/umeng/socialize/bean/SocializeEntity;

    invoke-interface {v0, v3, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onComplete(Lcom/umeng/socialize/bean/MultiStatus;ILcom/umeng/socialize/bean/SocializeEntity;)V

    .line 640
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/impl/i;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/impl/i;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 620
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 621
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/i;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/umeng/socialize/controller/impl/i;->b:Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$MulStatusListener;->onStart()V

    .line 624
    :cond_0
    return-void
.end method
