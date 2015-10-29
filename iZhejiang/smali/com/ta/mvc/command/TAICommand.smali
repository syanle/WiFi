.class public interface abstract Lcom/ta/mvc/command/TAICommand;
.super Ljava/lang/Object;
.source "TAICommand.java"


# virtual methods
.method public abstract execute()V
.end method

.method public abstract getRequest()Lcom/ta/mvc/common/TARequest;
.end method

.method public abstract getResponse()Lcom/ta/mvc/common/TAResponse;
.end method

.method public abstract getResponseListener()Lcom/ta/mvc/common/TAIResponseListener;
.end method

.method public abstract isTerminated()Z
.end method

.method public abstract setRequest(Lcom/ta/mvc/common/TARequest;)V
.end method

.method public abstract setResponse(Lcom/ta/mvc/common/TAResponse;)V
.end method

.method public abstract setResponseListener(Lcom/ta/mvc/common/TAIResponseListener;)V
.end method

.method public abstract setTerminated(Z)V
.end method
