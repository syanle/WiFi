.class public Lcom/cat/command/SendMsgCommand;
.super Lcom/ta/mvc/command/TACommand;
.source "SendMsgCommand.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ta/mvc/command/TACommand;-><init>()V

    return-void
.end method


# virtual methods
.method protected executeCommand()V
    .locals 6

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/cat/command/SendMsgCommand;->getRequest()Lcom/ta/mvc/common/TARequest;

    move-result-object v3

    .line 16
    .local v3, "request":Lcom/ta/mvc/common/TARequest;
    invoke-virtual {v3}, Lcom/ta/mvc/common/TARequest;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 17
    .local v4, "strJson":Ljava/lang/String;
    new-instance v0, Lcom/cat/data/CodeResult;

    invoke-direct {v0}, Lcom/cat/data/CodeResult;-><init>()V

    .line 19
    .local v0, "codeResult":Lcom/cat/data/CodeResult;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "code"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cat/data/CodeResult;->setCode(Ljava/lang/String;)V

    .line 21
    const-string v5, "data"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cat/data/CodeResult;->setData(Ljava/lang/String;)V

    .line 22
    const-string v5, "message"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cat/data/CodeResult;->setMsg(Ljava/lang/String;)V

    .line 23
    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/cat/data/CodeResult;->setResult(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    invoke-virtual {p0, v0}, Lcom/cat/command/SendMsgCommand;->sendSuccessMessage(Ljava/lang/Object;)V

    .line 30
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Lorg/json/JSONException;
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {p0, v0}, Lcom/cat/command/SendMsgCommand;->sendSuccessMessage(Ljava/lang/Object;)V

    goto :goto_0

    .line 26
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    .line 27
    invoke-virtual {p0, v0}, Lcom/cat/command/SendMsgCommand;->sendSuccessMessage(Ljava/lang/Object;)V

    .line 28
    throw v5
.end method
