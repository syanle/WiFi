.class Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$2;
.super Ljava/lang/Object;
.source "IILWAPICallbackImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->onLWAPICallback(I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

.field private final synthetic val$eventResult:I


# direct methods
.method constructor <init>(Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$2;->this$0:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    iput p2, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$2;->val$eventResult:I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$2;->this$0:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    # getter for: Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mIIApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->access$0(Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;)Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$2;->this$0:Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;

    # getter for: Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mIIApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;
    invoke-static {v0}, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->access$0(Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;)Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    move-result-object v0

    iget v1, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$2;->val$eventResult:I

    invoke-virtual {v0, v1}, Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;->onResponceAnswer(I)I

    .line 65
    :cond_0
    return-void
.end method
