.class public Lcom/ta/mvc/command/TAIdentityCommand;
.super Lcom/ta/mvc/command/TACommand;
.source "TAIdentityCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ta/mvc/command/TACommand;-><init>()V

    return-void
.end method


# virtual methods
.method protected executeCommand()V
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/ta/mvc/command/TAIdentityCommand;->getRequest()Lcom/ta/mvc/common/TARequest;

    move-result-object v0

    .line 29
    .local v0, "request":Lcom/ta/mvc/common/TARequest;
    new-instance v1, Lcom/ta/mvc/common/TAResponse;

    invoke-direct {v1}, Lcom/ta/mvc/common/TAResponse;-><init>()V

    .line 30
    .local v1, "response":Lcom/ta/mvc/common/TAResponse;
    invoke-virtual {v0}, Lcom/ta/mvc/common/TARequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ta/mvc/common/TAResponse;->setTag(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0}, Lcom/ta/mvc/common/TARequest;->getData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ta/mvc/common/TAResponse;->setData(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {v0}, Lcom/ta/mvc/common/TARequest;->getActivityKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ta/mvc/common/TAResponse;->setActivityKey(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/ta/mvc/common/TARequest;->getActivityKeyResID()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ta/mvc/common/TAResponse;->setActivityKeyResID(I)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/ta/mvc/command/TAIdentityCommand;->setResponse(Lcom/ta/mvc/common/TAResponse;)V

    .line 35
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ta/mvc/command/TAIdentityCommand;->notifyListener(Z)V

    .line 36
    return-void
.end method

.method protected notifyListener(Z)V
    .locals 2
    .param p1, "success"    # Z

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/ta/mvc/command/TAIdentityCommand;->getResponseListener()Lcom/ta/mvc/common/TAIResponseListener;

    move-result-object v0

    .line 41
    .local v0, "responseListener":Lcom/ta/mvc/common/TAIResponseListener;
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/ta/mvc/command/TAIdentityCommand;->sendMessage(I)V

    .line 45
    :cond_0
    return-void
.end method
