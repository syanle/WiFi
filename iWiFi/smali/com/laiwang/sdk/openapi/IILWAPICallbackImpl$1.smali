.class Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$1;
.super Ljava/lang/Object;
.source "IILWAPICallbackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->onDisplay(Lcom/laiwang/sdk/message/LWMessage;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

.field private final synthetic val$lwMessage:Lcom/laiwang/sdk/message/LWMessage;


# direct methods
.method constructor <init>(Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;Lcom/laiwang/sdk/message/LWMessage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$1;->this$0:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    iput-object p2, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$1;->val$lwMessage:Lcom/laiwang/sdk/message/LWMessage;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$1;->this$0:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    # getter for: Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mIIApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->access$0(Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;)Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$1;->this$0:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    # getter for: Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mIIApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->access$0(Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;)Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$1;->val$lwMessage:Lcom/laiwang/sdk/message/LWMessage;

    invoke-virtual {v1}, Lcom/laiwang/sdk/message/LWMessage;->getMessageLinkUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;->onDisplay(Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method
