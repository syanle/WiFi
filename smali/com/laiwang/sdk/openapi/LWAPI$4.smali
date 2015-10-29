.class Lcom/laiwang/sdk/openapi/LWAPI$4;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/sdk/openapi/LWAPI;->transactData(Landroid/content/Context;Lcom/laiwang/sdk/message/IILWMessage;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/sdk/openapi/LWAPI;

.field private final synthetic val$apiContext:Landroid/content/Context;

.field private final synthetic val$message:Lcom/laiwang/sdk/message/IILWMessage;

.field private final synthetic val$version:I


# direct methods
.method constructor <init>(Lcom/laiwang/sdk/openapi/LWAPI;Landroid/content/Context;ILcom/laiwang/sdk/message/IILWMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    iput-object p2, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$apiContext:Landroid/content/Context;

    iput p3, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$version:I

    iput-object p4, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 268
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/LWAPI;->access$0(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    const-string v0, "\u6765\u5f80\u5f88\u5fd9,\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIsLaiwangSupport:Z
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/LWAPI;->access$8(Lcom/laiwang/sdk/openapi/LWAPI;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$apiContext:Landroid/content/Context;

    iget v1, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$version:I

    invoke-static {v0, v1}, Lcom/laiwang/sdk/openapi/LWAPI;->downloadLaiwangAPK(Landroid/content/Context;I)V

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIsLossVersion:Z
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/LWAPI;->access$9(Lcom/laiwang/sdk/openapi/LWAPI;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    invoke-interface {v1}, Lcom/laiwang/sdk/message/IILWMessage;->getMessageType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/openapi/LWAPI;->isLWSupported(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 279
    const-string v0, "\u6682\u4e0d\u652f\u6301\u6b64\u7c7b\u7684\u5206\u4eab\uff0c\u8bf7\u66f4\u65b0\u60a8\u7684\u6765\u5f80"

    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 280
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$apiContext:Landroid/content/Context;

    iget v1, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$version:I

    invoke-static {v0, v1}, Lcom/laiwang/sdk/openapi/LWAPI;->downloadLaiwangAPK(Landroid/content/Context;I)V

    goto :goto_0

    .line 283
    :cond_3
    const-string v0, "\u53ca\u65f6\u66f4\u65b0\u6765\u5f80\u54e6,\u60ca\u559c\u5728\u540e\u9762"

    invoke-static {}, Lcom/laiwang/sdk/openapi/LWAPI;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/laiwang/sdk/utils/LWAPINotification;->showToast(Ljava/lang/String;Landroid/content/Context;)V

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mLWVersion:I
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/LWAPI;->access$4(Lcom/laiwang/sdk/openapi/LWAPI;)I

    move-result v0

    const v1, 0x20140101

    if-lt v0, v1, :cond_5

    .line 287
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    invoke-interface {v0}, Lcom/laiwang/sdk/message/IILWMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    .line 288
    .local v6, "reqeustBundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/LWAPI;->access$0(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;
    invoke-static {v1}, Lcom/laiwang/sdk/openapi/LWAPI;->access$1(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/openapi/LWAPIAccount;

    move-result-object v1

    iget v2, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$version:I

    invoke-virtual {v0, v1, v6, v2}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->requestData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Landroid/os/Bundle;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 289
    const-string v0, "RESPONCE"

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    invoke-interface {v1}, Lcom/laiwang/sdk/message/IILWMessage;->getShareType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$apiContext:Landroid/content/Context;

    const-string v2, "com.alibaba.android.babylon"

    iget-object v3, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    invoke-interface {v3}, Lcom/laiwang/sdk/message/IILWMessage;->getShareType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    # invokes: Lcom/laiwang/sdk/openapi/LWAPI;->intentLaiwang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)V
    invoke-static/range {v0 .. v5}, Lcom/laiwang/sdk/openapi/LWAPI;->access$10(Lcom/laiwang/sdk/openapi/LWAPI;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)V

    goto :goto_0

    .line 294
    .end local v6    # "reqeustBundle":Landroid/os/Bundle;
    :cond_5
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/LWAPI;->access$0(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    move-result-object v1

    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/LWAPI;->access$1(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/openapi/LWAPIAccount;

    move-result-object v2

    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    check-cast v0, Lcom/laiwang/sdk/message/LWMessage;

    iget v3, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$version:I

    invoke-virtual {v1, v2, v0, v3}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->transportData(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/message/LWMessage;I)I

    move-result v0

    if-nez v0, :cond_6

    .line 295
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$apiContext:Landroid/content/Context;

    const-string v2, "com.alibaba.android.babylon"

    iget-object v3, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    invoke-interface {v3}, Lcom/laiwang/sdk/message/IILWMessage;->getShareType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    # invokes: Lcom/laiwang/sdk/openapi/LWAPI;->intentLaiwang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)V
    invoke-static/range {v0 .. v5}, Lcom/laiwang/sdk/openapi/LWAPI;->access$10(Lcom/laiwang/sdk/openapi/LWAPI;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)V

    goto/16 :goto_0

    .line 297
    :cond_6
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$apiContext:Landroid/content/Context;

    const-string v2, "com.alibaba.android.babylon"

    iget-object v3, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    invoke-interface {v3}, Lcom/laiwang/sdk/message/IILWMessage;->getShareType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/laiwang/sdk/openapi/LWAPI$4;->val$message:Lcom/laiwang/sdk/message/IILWMessage;

    const/4 v5, 0x1

    # invokes: Lcom/laiwang/sdk/openapi/LWAPI;->intentLaiwang(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)V
    invoke-static/range {v0 .. v5}, Lcom/laiwang/sdk/openapi/LWAPI;->access$10(Lcom/laiwang/sdk/openapi/LWAPI;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/laiwang/sdk/message/IILWMessage;Z)V

    goto/16 :goto_0
.end method
