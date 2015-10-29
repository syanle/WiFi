.class Lcom/laiwang/sdk/openapi/LWAPI$8;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/sdk/openapi/LWAPI;->answerLWResponced(Landroid/content/Context;Ljava/lang/String;Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/sdk/openapi/LWAPI;

.field private final synthetic val$apiContext:Landroid/content/Context;

.field private final synthetic val$fromLink:Ljava/lang/String;

.field private final synthetic val$iLaiwangApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;


# direct methods
.method constructor <init>(Lcom/laiwang/sdk/openapi/LWAPI;Landroid/content/Context;Ljava/lang/String;Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    iput-object p2, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->val$apiContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->val$fromLink:Ljava/lang/String;

    iput-object p4, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->val$iLaiwangApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 422
    iget-object v2, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;
    invoke-static {v2}, Lcom/laiwang/sdk/openapi/LWAPI;->access$0(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    const-string v2, "\u6765\u5f80\u5f88\u5fd9,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangSupport:Z
    invoke-static {v2}, Lcom/laiwang/sdk/openapi/LWAPI;->access$8(Lcom/laiwang/sdk/openapi/LWAPI;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 427
    iget-object v2, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->val$apiContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mAppVersion:I
    invoke-static {v3}, Lcom/laiwang/sdk/openapi/LWAPI;->access$11(Lcom/laiwang/sdk/openapi/LWAPI;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/laiwang/sdk/openapi/LWAPI;->downloadLaiwangAPK(Landroid/content/Context;I)V

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    iget-object v2, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIsLossVersion:Z
    invoke-static {v2}, Lcom/laiwang/sdk/openapi/LWAPI;->access$9(Lcom/laiwang/sdk/openapi/LWAPI;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 432
    const-string v2, "\u53ca\u65f6\u66f4\u65b0\u6765\u5f80\u54e6,\u60ca\u559c\u5728\u540e\u9762"

    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 435
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, "reqeustIntent":Landroid/content/Intent;
    const-string v2, "shareType"

    const-string v3, "ANSEWR"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v2, "reqeustURI"

    iget-object v3, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->val$fromLink:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    iget-object v2, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;
    invoke-static {v2}, Lcom/laiwang/sdk/openapi/LWAPI;->access$0(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    move-result-object v2

    iget-object v3, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;
    invoke-static {v3}, Lcom/laiwang/sdk/openapi/LWAPI;->access$1(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/openapi/LWAPIAccount;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    iget-object v5, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mAppVersion:I
    invoke-static {v5}, Lcom/laiwang/sdk/openapi/LWAPI;->access$11(Lcom/laiwang/sdk/openapi/LWAPI;)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->requestData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Landroid/os/Bundle;I)I

    move-result v1

    .line 441
    .local v1, "ret":I
    iget-object v2, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->val$iLaiwangApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    if-eqz v2, :cond_1

    .line 442
    iget-object v2, p0, Lcom/laiwang/sdk/openapi/LWAPI$8;->val$iLaiwangApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    invoke-virtual {v2, v1}, Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;->onResponceAnswer(I)I

    goto :goto_0
.end method
