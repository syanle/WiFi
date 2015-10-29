.class Lcom/laiwang/sdk/openapi/LWAPI$1;
.super Ljava/lang/Object;
.source "LWAPI.java"

# interfaces
.implements Lcom/laiwang/sdk/channel/IILWAPIChannelProxy$ISDKConnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/sdk/openapi/LWAPI;->connectLaiwangService(ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/sdk/openapi/LWAPI;

.field private final synthetic val$appName:Ljava/lang/String;

.field private final synthetic val$version:I


# direct methods
.method constructor <init>(Lcom/laiwang/sdk/openapi/LWAPI;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    iput p2, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->val$version:I

    iput-object p3, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->val$appName:Ljava/lang/String;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 2
    .param p1, "lwShareError"    # I

    .prologue
    .line 129
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/laiwang/sdk/openapi/LWAPI;->access$7(Lcom/laiwang/sdk/openapi/LWAPI;Z)V

    .line 133
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 115
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPIChannelPorxy:Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;
    invoke-static {v1}, Lcom/laiwang/sdk/openapi/LWAPI;->access$0(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;
    invoke-static {v2}, Lcom/laiwang/sdk/openapi/LWAPI;->access$1(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/openapi/LWAPIAccount;

    move-result-object v2

    iget-object v3, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mIILWAPICallbackImpl:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;
    invoke-static {v3}, Lcom/laiwang/sdk/openapi/LWAPI;->access$2(Lcom/laiwang/sdk/openapi/LWAPI;)Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    move-result-object v3

    iget v4, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->val$version:I

    iget-object v5, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->val$appName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/laiwang/sdk/channel/IILWAPIChannelProxy;->registerAPP(Lcom/laiwang/sdk/openapi/LWAPIAccount;Lcom/laiwang/sdk/openapi/IILWAPICallback;ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/laiwang/sdk/openapi/LWAPI;->access$3(Lcom/laiwang/sdk/openapi/LWAPI;I)V

    .line 117
    iget v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->val$version:I

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    # getter for: Lcom/laiwang/sdk/openapi/LWAPI;->mLWVersion:I
    invoke-static {v1}, Lcom/laiwang/sdk/openapi/LWAPI;->access$4(Lcom/laiwang/sdk/openapi/LWAPI;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 119
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    invoke-static {v0, v6}, Lcom/laiwang/sdk/openapi/LWAPI;->access$5(Lcom/laiwang/sdk/openapi/LWAPI;Z)V

    .line 124
    :goto_0
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/LWAPI$1;->this$0:Lcom/laiwang/sdk/openapi/LWAPI;

    invoke-static {v0, v6}, Lcom/laiwang/sdk/openapi/LWAPI;->access$6(Lcom/laiwang/sdk/openapi/LWAPI;Z)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
