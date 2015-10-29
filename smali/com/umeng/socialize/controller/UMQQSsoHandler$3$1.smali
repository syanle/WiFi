.class Lcom/umeng/socialize/controller/UMQQSsoHandler$3$1;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Lcom/umeng/socialize/controller/UMQQSsoHandler$ObtainAppIdListener;


# instance fields
.field final synthetic this$1:Lcom/umeng/socialize/controller/UMQQSsoHandler$3;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/controller/UMQQSsoHandler$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3$1;->this$1:Lcom/umeng/socialize/controller/UMQQSsoHandler$3;

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3$1;->this$1:Lcom/umeng/socialize/controller/UMQQSsoHandler$3;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->access$0(Lcom/umeng/socialize/controller/UMQQSsoHandler$3;)Lcom/umeng/socialize/controller/UMQQSsoHandler;

    move-result-object v0

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->initTencent()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$10(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    .line 199
    const-string v0, "com.tencent.mobileqq"

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/umeng/socom/DeviceConfig;->isAppInstalled(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3$1;->this$1:Lcom/umeng/socialize/controller/UMQQSsoHandler$3;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->access$0(Lcom/umeng/socialize/controller/UMQQSsoHandler$3;)Lcom/umeng/socialize/controller/UMQQSsoHandler;

    move-result-object v0

    # invokes: Lcom/umeng/socialize/controller/UMQQSsoHandler;->gotoShare()V
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$2(Lcom/umeng/socialize/controller/UMQQSsoHandler;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3$1;->this$1:Lcom/umeng/socialize/controller/UMQQSsoHandler$3;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;
    invoke-static {v0}, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->access$0(Lcom/umeng/socialize/controller/UMQQSsoHandler$3;)Lcom/umeng/socialize/controller/UMQQSsoHandler;

    move-result-object v0

    sget-object v1, Lcom/umeng/socialize/controller/UMQQSsoHandler;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/umeng/socialize/controller/UMQQSsoHandler$3$1;->this$1:Lcom/umeng/socialize/controller/UMQQSsoHandler$3;

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->this$0:Lcom/umeng/socialize/controller/UMQQSsoHandler;
    invoke-static {v2}, Lcom/umeng/socialize/controller/UMQQSsoHandler$3;->access$0(Lcom/umeng/socialize/controller/UMQQSsoHandler$3;)Lcom/umeng/socialize/controller/UMQQSsoHandler;

    move-result-object v2

    # getter for: Lcom/umeng/socialize/controller/UMQQSsoHandler;->authListener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;
    invoke-static {v2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->access$11(Lcom/umeng/socialize/controller/UMQQSsoHandler;)Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/umeng/socialize/controller/UMQQSsoHandler;->authorize(Landroid/app/Activity;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    goto :goto_0
.end method
