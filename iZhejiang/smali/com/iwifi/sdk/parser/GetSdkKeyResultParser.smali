.class public Lcom/iwifi/sdk/parser/GetSdkKeyResultParser;
.super Ljava/lang/Object;
.source "GetSdkKeyResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "jsonObject":Lorg/json/JSONObject;
    return-object v0
.end method

.method public static GetSdkKeyResultList(Ljava/lang/String;)Lcom/iwifi/sdk/data/SdkKeyResult;
    .locals 3
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    new-instance v1, Lcom/iwifi/sdk/data/SdkKeyResult;

    invoke-direct {v1}, Lcom/iwifi/sdk/data/SdkKeyResult;-><init>()V

    .line 18
    .local v1, "sdkkeyResult":Lcom/iwifi/sdk/data/SdkKeyResult;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iwifi/sdk/data/SdkKeyResult;->setData(Ljava/lang/String;)V

    .line 21
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iwifi/sdk/data/SdkKeyResult;->setCode(Ljava/lang/String;)V

    .line 22
    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iwifi/sdk/data/SdkKeyResult;->setResult(Ljava/lang/String;)V

    .line 23
    const-string v2, "message"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/iwifi/sdk/data/SdkKeyResult;->setMessage(Ljava/lang/String;)V

    .line 25
    return-object v1
.end method
