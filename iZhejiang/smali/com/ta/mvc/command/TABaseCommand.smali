.class public abstract Lcom/ta/mvc/command/TABaseCommand;
.super Ljava/lang/Object;
.source "TABaseCommand.java"

# interfaces
.implements Lcom/ta/mvc/command/TAICommand;


# instance fields
.field private request:Lcom/ta/mvc/common/TARequest;

.field private response:Lcom/ta/mvc/common/TAResponse;

.field private responseListener:Lcom/ta/mvc/common/TAIResponseListener;

.field private terminated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/ta/mvc/common/TARequest;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ta/mvc/command/TABaseCommand;->request:Lcom/ta/mvc/common/TARequest;

    return-object v0
.end method

.method public getResponse()Lcom/ta/mvc/common/TAResponse;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ta/mvc/command/TABaseCommand;->response:Lcom/ta/mvc/common/TAResponse;

    return-object v0
.end method

.method public getResponseListener()Lcom/ta/mvc/common/TAIResponseListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ta/mvc/command/TABaseCommand;->responseListener:Lcom/ta/mvc/common/TAIResponseListener;

    return-object v0
.end method

.method public isTerminated()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/ta/mvc/command/TABaseCommand;->terminated:Z

    return v0
.end method

.method public setRequest(Lcom/ta/mvc/common/TARequest;)V
    .locals 0
    .param p1, "request"    # Lcom/ta/mvc/common/TARequest;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/ta/mvc/command/TABaseCommand;->request:Lcom/ta/mvc/common/TARequest;

    .line 41
    return-void
.end method

.method public setResponse(Lcom/ta/mvc/common/TAResponse;)V
    .locals 0
    .param p1, "response"    # Lcom/ta/mvc/common/TAResponse;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ta/mvc/command/TABaseCommand;->response:Lcom/ta/mvc/common/TAResponse;

    .line 55
    return-void
.end method

.method public setResponseListener(Lcom/ta/mvc/common/TAIResponseListener;)V
    .locals 0
    .param p1, "responseListener"    # Lcom/ta/mvc/common/TAIResponseListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ta/mvc/command/TABaseCommand;->responseListener:Lcom/ta/mvc/common/TAIResponseListener;

    .line 69
    return-void
.end method

.method public setTerminated(Z)V
    .locals 0
    .param p1, "terminated"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/ta/mvc/command/TABaseCommand;->terminated:Z

    .line 76
    return-void
.end method
