.class Lcom/umeng/socialize/controller/UMQQSsoHandler$4;
.super Lcom/umeng/socialize/controller/impl/UMAsyncTask;
.source "UMQQSsoHandler.java"


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
.field final synthetic this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

.field private final synthetic val$listener:Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler;Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;->val$listener:Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;

    .line 248
    invoke-direct {p0}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground()Lcom/umeng/socialize/net/g;
    .locals 4

    .prologue
    .line 253
    new-instance v0, Lcom/umeng/socialize/controller/impl/a;

    .line 254
    new-instance v1, Lcom/umeng/socialize/bean/SocializeEntity;

    const-string v2, "com.umeng.qq.sso"

    .line 255
    sget-object v3, Lcom/umeng/socialize/controller/RequestType;->SOCIAL:Lcom/umeng/socialize/controller/RequestType;

    .line 254
    invoke-direct {v1, v2, v3}, Lcom/umeng/socialize/bean/SocializeEntity;-><init>(Ljava/lang/String;Lcom/umeng/socialize/controller/RequestType;)V

    .line 253
    invoke-direct {v0, v1}, Lcom/umeng/socialize/controller/impl/a;-><init>(Lcom/umeng/socialize/bean/SocializeEntity;)V

    .line 256
    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/controller/impl/a;->g(Landroid/content/Context;)Lcom/umeng/socialize/net/g;

    move-result-object v0

    .line 257
    return-object v0
.end method

.method protected bridge synthetic doInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;->doInBackground()Lcom/umeng/socialize/net/g;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/umeng/socialize/net/g;)V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/umeng/socialize/controller/impl/UMAsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 263
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/umeng/socialize/net/g;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->isTimeOut:Z
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$17(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    iget-object v0, p1, Lcom/umeng/socialize/net/g;->a:Ljava/util/Map;

    const-string v1, "qzone"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$4(Ljava/lang/String;)V

    .line 267
    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$13()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string v0, "100424468"

    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$4(Ljava/lang/String;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$1(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->mTimerRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$18(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 272
    sget-object v0, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->APP_ID:Ljava/lang/String;
    invoke-static {}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$13()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/socialize/db/OauthHelper;->saveQQAppId(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;->val$listener:Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;

    if-eqz v0, :cond_1

    .line 274
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;->val$listener:Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;

    invoke-interface {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;->onComplete()V

    .line 279
    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/umeng/socialize/net/g;

    invoke-virtual {p0, p1}, Lcom/umeng/socialize/controller/UMQQSsoHandler$4;->onPostExecute(Lcom/umeng/socialize/net/g;)V

    return-void
.end method
