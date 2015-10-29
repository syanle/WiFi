.class public Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;
.super Lcom/laiwang/sdk/openapi/IILWAPICallback$Stub;
.source "IILWAPICallbackImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIIApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

.field private mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

.field private mMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 19
    invoke-direct {p0}, Lcom/laiwang/sdk/openapi/IILWAPICallback$Stub;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mMainHandler:Landroid/os/Handler;

    .line 15
    iput-object v2, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mContext:Landroid/content/Context;

    .line 20
    iput-object v2, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;)Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mIIApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    return-object v0
.end method


# virtual methods
.method public onDisplay(Lcom/laiwang/sdk/message/LWMessage;)I
    .locals 2
    .param p1, "lwMessage"    # Lcom/laiwang/sdk/message/LWMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$1;-><init>(Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;Lcom/laiwang/sdk/message/LWMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public onLWAPICallback(I)I
    .locals 2
    .param p1, "eventResult"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl$2;-><init>(Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public setIIApiCallback(Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;)V
    .locals 0
    .param p1, "iApiCallback"    # Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mIIApiCallback:Lcom/laiwang/sdk/openapi/ILWAPI$IILaiwangApiCallback;

    .line 25
    return-void
.end method

.method public setLWAPIAccount(Lcom/laiwang/sdk/openapi/LWAPIAccount;)V
    .locals 0
    .param p1, "lwAPIAccount"    # Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/laiwang/sdk/openapi/IILWAPICallbackImpl;->mLWAPIAccount:Lcom/laiwang/sdk/openapi/LWAPIAccount;

    .line 29
    return-void
.end method
