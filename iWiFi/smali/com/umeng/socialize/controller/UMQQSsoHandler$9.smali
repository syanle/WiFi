.class Lcom/umeng/socialize/controller/UMQQSsoHandler$9;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "UMQQSsoHandler.java"


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
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$mClientListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

.field private final synthetic val$token:Lcom/umeng/socialize/bean/UMToken;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;->val$mClientListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    iput-object p3, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;->val$token:Lcom/umeng/socialize/bean/UMToken;

    .line 546
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Ljava/lang/Integer;
    .locals 4

    .prologue
    .line 556
    new-instance v0, Lcom/umeng/socialize/controller/impl/b;

    .line 557
    new-instance v1, Lcom/umeng/socialize/bean/SocializeEntity;

    .line 558
    const-string v2, "qq"

    .line 559
    sget-object v3, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    .line 557
    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;-><init>(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)V

    .line 556
    invoke-direct {v0, v1}, Lcom/umeng/socialize/controller/impl/b;-><init>(Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 560
    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;->val$token:Lcom/umeng/socialize/bean/UMToken;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/impl/b;->a(Landroid/content/Context;Lcom/umeng/socialize/bean/UMToken;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;->doInBackground()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 3

    .prologue
    .line 565
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 566
    const/16 v0, 0xc8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 567
    const-string v0, "UMQQSsoHandler"

    const-string v1, "##### Token \u4e0a\u4f20\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_0
    const-string v0, "UMQQSsoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UPLOAD RESULT : CODE = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 569
    :cond_0
    const-string v0, "UMQQSsoHandler"

    const-string v1, "##### Token \u4e0a\u4f20\u6210\u529f"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 550
    invoke-super {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPreExecute()V

    .line 551
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$9;->val$mClientListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/listener/SocializeListeners$SocializeClientListener;->onStart()V

    .line 552
    return-void
.end method
